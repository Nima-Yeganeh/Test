import json

def calculate_sum_max_instances(json_file):
    with open(json_file, 'r') as file:
        json_data = json.load(file)

    max_instances_sum = 0

    for server, details in json_data["Live"].items():
        if "europe" in server.lower():  # Check if the server name contains "europe" (case-insensitive)
            max_instances_sum += details.get("MaxInstances", 0)

    return max_instances_sum

if __name__ == "__main__":
    json_file_path = "C:/Users/Nimay/nima_git/test/ztest/python/host_layout.json"
    total_max_instances = calculate_sum_max_instances(json_file_path)
    print("Total MaxInstances for Live servers in Europe:", total_max_instances)
