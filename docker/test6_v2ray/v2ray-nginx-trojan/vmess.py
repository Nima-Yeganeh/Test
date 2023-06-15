#!/usr/bin/python3

import yaml
import json
from pathlib import Path

path = Path(__file__).parent

v2ray_config_file = open(str(path.joinpath('v2ray/config/config.json')), 'r', encoding='utf-8')
v2ray_config = json.load(v2ray_config_file)
with open(str(path.joinpath('docker-compose.yml')), 'r') as f:
    dockerCompose = yaml.safe_load(f)

password = v2ray_config['inbounds'][0]['settings']['clients'][0]['password']
domain = dockerCompose["services"]["v2ray"]["environment"][1].split('=')[1];

print("trojan://" + password + "@" + domain + ":443?sni" + domain + "&security=tls&type=ws&path=/about-us&host=" + domain + "#Trojan-v2ray")
