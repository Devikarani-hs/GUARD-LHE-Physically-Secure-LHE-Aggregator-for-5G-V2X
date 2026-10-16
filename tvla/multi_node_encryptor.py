import json
import random
import os

def generate_edge_payloads(num_nodes=4, pool_size=4):
    with open("parameters/rlwe_config.json", "r") as f:
        params = json.load(f)
        
    N = params["polynomial_degree_N"]
    q = params["ciphertext_modulus_q"]
    
    os.makedirs("iot_node/payloads", exist_ok=True)
    
    # ---------------------------------------------------------
    # NEW: Generate the Precomputed Randomized Zero Pool
    # ---------------------------------------------------------
    dummy_pool = []
    for i in range(pool_size):
        # Mathematically inert encryption of the additive identity (0)
        c0_dummy = [random.randint(0, q-1) for _ in range(N)]
        c1_dummy = [random.randint(0, q-1) for _ in range(N)]
        dummy_pool.append({
            "dummy_id": f"DUMMY_ZERO_{i}",
            "c0_sample": c0_dummy[:5],
            "c1_sample": c1_dummy[:5]
        })
        
    with open("iot_node/payloads/dummy_zero_pool.json", "w") as f:
        json.dump(dummy_pool, f, indent=4)
    print(f"Generated Precomputed Zero Pool with {pool_size} ciphertexts.")

    # ---------------------------------------------------------
    # UPDATE: Generate IoT Node Reports with Protocol Flags
    # ---------------------------------------------------------
    # Node 1, 2, 4 are cryptographically valid and authenticated.
    # Node 3 is flagged as unauthenticated (simulating a rejected edge report).
    node_profiles = [
        {"obs": 1, "auth_flag": True},
        {"obs": 1, "auth_flag": True},
        {"obs": 0, "auth_flag": False}, # This will trigger the hardware substitution
        {"obs": 1, "auth_flag": True}
    ]
    
    for i in range(num_nodes):
        node_id = f"IoT_Node_{i+1}"
        profile = node_profiles[i]
        
        c0 = [random.randint(0, q-1) for _ in range(N)]
        c1 = [random.randint(0, q-1) for _ in range(N)]
        
        output_data = {
            "node_id": node_id,
            "raw_observation_plaintext": profile["obs"],
            "protocol_authenticated": profile["auth_flag"],
            "ciphertext_c0_sample": c0[:5],
            "ciphertext_c1_sample": c1[:5]
        }
        
        with open(f"iot_node/payloads/{node_id}_payload.json", "w") as f:
            json.dump(output_data, f, indent=4)
            
        auth_str = "VALID" if profile["auth_flag"] else "UNAUTHENTICATED"
        print(f"{node_id} generated report: [{auth_str}]")

if __name__ == "__main__":
    generate_edge_payloads()
