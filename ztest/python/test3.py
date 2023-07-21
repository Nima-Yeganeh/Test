import json

def calculate_sum_max_instances(json_data):
    sum_max_instances = 0

    for server, details in json_data["Live"].items():
        if "europe" in server.lower():  # Check if the server name contains "europe" (case-insensitive)
            sum_max_instances += details.get("MaxInstances", 0)

    return sum_max_instances

if __name__ == "__main__":
    json_data = {
        "Live": {
            "bm10-russia.example.org": {"Role": "api", "MaxInstances": 4},
            "bm10-hongkong.example.org": {"Role": "ds", "MaxInstances": 14},
            # Add the rest of the data here...
        }
    }

    sum_max_instances = calculate_sum_max_instances(json_data)
    print("Sum of MaxInstances for Live servers in Europe:", sum_max_instances)
