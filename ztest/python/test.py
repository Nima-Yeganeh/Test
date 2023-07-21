import json

def calculate_sum_max_instances(json_file):
    with open(json_file, 'r') as file:
        data = json.load(file)

    max_instances_sum = 0

    for server in data['servers']:
        if server['Status'] == 'Live' and server['Region'] == 'Europe':
            max_instances_sum += server['MaxInstances']

    return max_instances_sum

if __name__ == "__main__":
    json_file_path = "C:/Users/Nimay/nima_git/test/ztest/python/servers.json"
    total_max_instances = calculate_sum_max_instances(json_file_path)
    print("Total MaxInstances for Live servers in Europe:", total_max_instances)
