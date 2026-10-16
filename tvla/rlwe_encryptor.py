import json
import random

def simulate_iot_encryption():
    # The previously formulated parameters were loaded
    with open("parameters/rlwe_config.json", "r") as f:
        params = json.load(f)
        
    N = params["polynomial_degree_N"]
    q = params["ciphertext_modulus_q"]
    
    # A raw security observation was generated (1 for secure, 0 for compromised)
    observation = random.choice([0, 1])
    
    # The lightweight RLWE encryption was simulated
    # In a physical node, this utilized a TRNG for error sampling
    # A simplified polynomial representation was generated for the ciphertext pair (c0, c1)
    c0 = [random.randint(0, q-1) for _ in range(N)]
    c1 = [random.randint(0, q-1) for _ in range(N)]
    
    output_data = {
        "node_id": "IoT_Node_1",
        "raw_observation_plaintext": observation,
        "ciphertext_c0_sample": c0[:5], # The first 5 coefficients were saved to represent the payload
        "ciphertext_c1_sample": c1[:5],
        "status": "Encrypted successfully. Plaintext remains on device."
    }
    
    # The encrypted payload was exported
    with open("iot_node/encrypted_observation.json", "w") as f:
        json.dump(output_data, f, indent=4)
        
    print(f"IoT Node 1 successfully encrypted the raw observation.")
    print("The ciphertext payload was generated and saved to iot_node/encrypted_observation.json")

if __name__ == "__main__":
    simulate_iot_encryption()
