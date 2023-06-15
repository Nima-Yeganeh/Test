#!/usr/bin/python3

import random
import json
import yaml
from pathlib import Path
import string

sslEnable = False

def get_random_string(length):
    result_str = ''.join(random.choice(string.ascii_letters) for i in range(length))
    return result_str

# LOAD CONFIG FILES

v2rayConfigPath = Path(__file__).parent.joinpath('v2ray/config/config.json')
dockerComposePath = Path(__file__).parent.joinpath('docker-compose.yml')
file = open(str(v2rayConfigPath), 'r', encoding='utf-8')
config = json.load(file)
with open(str(dockerComposePath), 'r') as f:
    dockerComposeObject = yaml.safe_load(f)


# INPUT: PASSWORD

defaultPass = config['inbounds'][0]['settings']['clients'][0]['password']

if defaultPass == '<YOUR_PASSWORD>':
    message = "Trojan Password: (Leave empty to generate a random one)\n"
else:
    message = f"Trojan Password: (Leave empty to use `{defaultPass}`)\n"

upstreamPass = input(message)
if upstreamPass == '':
    if defaultPass == '<YOUR_PASSWORD>':
        upstreamPass = str(get_random_string(8))
    else:
        upstreamPass = defaultPass

# INPUT: Nginx configs

message = "Enter your domain without http or https: (for example: test.com)\n"
domain = input(message)
message = "Enable SSL for this domain? type 'yes' or 'no'. Default is no. if you are using CDN, ignore this.\n"
isSSLEnable = input(message)
if isSSLEnable == 'yes':
    sslEnable = True
    message = "Enter your email for letsencrypt:\n"
    email = input(message)


# SAVE CONFIG FILES

config['inbounds'][0]['settings']['clients'][0]['password'] = upstreamPass
dockerComposeObject["services"]["v2ray"]["environment"][1] = f'VIRTUAL_HOST={domain}'
dockerComposeObject["services"]["v2ray"]["environment"][2] = f'LETSENCRYPT_HOST='
dockerComposeObject["services"]["nginx-proxy-acme"]["environment"][0] = f'DEFAULT_EMAIL='
if isSSLEnable == 'yes':
    dockerComposeObject["services"]["v2ray"]["environment"][2] = f'LETSENCRYPT_HOST={domain}'
    dockerComposeObject["services"]["nginx-proxy-acme"]["environment"][0] = f'DEFAULT_EMAIL={email}'

content = json.dumps(config, indent=2)
open(str(v2rayConfigPath), 'w', encoding='utf-8').write(content)
open(str(dockerComposePath), 'w', encoding='utf-8').write(yaml.dump(dockerComposeObject, default_flow_style=False))

# PRINT OUT RESULT

print(f'\n---------\nTrojan Password: {upstreamPass}')
print(f'Domain: {domain}')
if isSSLEnable == 'yes':
    print('SSL: enabled')
    print(f'Email: {email}')
print('---------\n')
print('\nDone!')
print('- Run docker-compose up -d for bringing up services')
print('- Run ./vmess.py to get your vmess links to share and import in clients\n')
