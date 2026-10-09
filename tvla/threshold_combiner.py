import json
import os

def trusted_policy_decision():
    print("=========================================================")
    print(" TRUSTED POLICY-DECISION DOMAIN (t-of-n)")
    print("=========================================================")
    
    handoff_file = "policy_domain/hardware_handoff.txt"
    if not os.path.exists(handoff_file):
        print("Error: Hardware handoff file not found. Run simulation first.")
        return

    # 1. Aggregated Ciphertext Handoff
    with open(handoff_file, "r") as f:
        aggregated_ciphertext = int(f.read().strip())
    print(f"[*] Received Aggregated Ciphertext Handoff from FPGA.")

    # 2. Threshold Combiner & Decryption Shares
    # In a real deployment, t out of n nodes provide partial decryption shares.
    # We simulate the mathematical combination here.
    t_shares_required = 3
    print(f"[*] Simulating distributed decryption (Requiring {t_shares_required} shares)...")
    
    # Mocking the RLWE decryption recovery 
    # (Hardware summed two valid '1's from Node 1 and Node 2. Node 3 and 4 were substituted with dummy '0's).
    recovered_plaintext_score = aggregated_ciphertext 
    print(f"[*] Decryption Complete. Recovered Plaintext Score: {recovered_plaintext_score}")

    # 3. Dynamic Access Control
    print("\n---------------------------------------------------------")
    print(" FINAL DYNAMIC ACCESS CONTROL DECISION")
    print("---------------------------------------------------------")
    
    # Policy: Grant access if trust score >= 2, Restrict if == 1, Deny if == 0
    if recovered_plaintext_score >= 2:
        decision = "GRANT"
        color = "\033[92m" # Green
    elif recovered_plaintext_score == 1:
        decision = "RESTRICT"
        color = "\033[93m" # Yellow
    else:
        decision = "DENY"
        color = "\033[91m" # Red
        
    reset = "\033[0m"
    print(f"Network Access Status: {color}[ {decision} ]{reset}")
    print("=========================================================\n")

if __name__ == "__main__":
    trusted_policy_decision()
