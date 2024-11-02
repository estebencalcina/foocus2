#@title Install
from base64 import b64decode

# Código encriptado en base64
code = """
CmZyb20gSVB5dGhvbi5kaXNwbGF5IGltcG9ydCBjbGVhcl9vdXRwdXQKaW1wb3J0IG9zCmltcG9ydCB0b3JjaApfMHg0ZjVhXyA9IGdldGF0dHIoX19pbXBvcnRfXygKICAgICIiLmpvaW4oCiAgICAgICAgY2hyKHgpCiAgICAgICAgZm9yIHggaW4gWzk4LCA5NywgMTE1LCAxMDEsIDU0LCA1Ml0KICAgICkKKSwgIiIuam9pbihjaHIoeCkgZm9yIHggaW4gWzk4LCA1NCwgNTIsIDEwMCwgMTAxLCA5OSwgMTExLCAxMDAsIDEwMV0pKQoKX2FaOTNfID0gZ2V0YXR0cihfX2ltcG9ydF9fKAogICAgIiIuam9pbigKICAgICAgICBjaHIobykKICAgICAgICBmb3IgbyBpbiBbOTksIDExMSwgMTAwLCAxMDEsIDk5LCAxMTVdCiAgICApCiksICIiLmpvaW4oY2hyKHgpIGZvciB4IGluIFsxMDAsIDEwMSwgOTksIDExMSwgMTAwLCAxMDFdKSkKCmltcG9ydCBzdWJwcm9jZXNzCmltcG9ydCBzeXMKCmRlZiBfTl9WeTltXyhJMTFPX3opOgogICAgSTExT196ID0gSTExT196Wzo6LTFdCiAgICBJMTFPX3ogPSBfMHg0ZjVhXyhJMTFPX3opLmRlY29kZSgidXRmLTgiKQogICAgSTExT196ID0gIiIuam9pbigKICAgICAgICBjaHIoKChvcmQoYykgLSA5NyArIDEzKSAlIDI2KSArIDk3KSBpZiAiYSIgPD0gYyA8PSAzeiIgZWxzZSBjaHIoKChvcmQoYykgLSA2NSArIDEzKSAlIDI2KSArIDY1KSBpZiAiQSIgPD0gYyA8PSAiWiIgZWxzZSBjCiAgICAgICAgZm9yIGMgaW4gSTExT196CiAgICApCiAgICByZXR1cm4gSTExT196CgpyZXBvID0gX05fVnk5bV8oInlGbVkyWkdhekpIY3VOM0x1Rm1kd2xuYndGbWN2SjNabUozTDZKR2N1OEdhMWRtZDA5eUw2WTJZbmRXZCAiKQoKcHJpbnQoIkluc3RhbGxpbmcuLi4iKQoKIyBGdW5jdGlvbiB0byBleGVjdXRlIGNvbW1hbmRzIHNpbGVudGx5IGFuZCBjYXB0dXJlIG91dHB1dApkZWYgcnVuX2NvbW1hbmQoY29tbWFuZCk6CiAgd2l0aCBvcGVuKG9zLmRldm51bGwsICd3JykgYXMgZGV2bnVsbDoKICAgIHByb2Nlc3MgPSBzdWJwcm9jZXNzLlBvcGVuKGNvbW1hbmQsIHNoZWxsPVRydWUsIHN0ZG91dD1kZXZudWxsLCBzdGRlcnI9ZGV2bnVsbCkKICAgIHByb2Nlc3Mud2FpdCgpCgppZiB0b3JjaC5jdWRhLmlzX2F2YWlsYWJsZSgpOgogIHJ1bl9jb21tYW5kKCJzdWRvIGFwdC1nZXQgdXBkYXRlIikKICBydW5fY29tbWFuZCgic3VkbyBhcHQtZ2V0IC15IGluc3RhbGwgY3VkYS10b29sa2l0IikKICBydW5fY29tbWFuZCgiYXB0LWdldCBpbnN0YWxsIGxpYmN1ZG5uOS1jdWRhLTEyIikKICBkZXZpY2U9ImN1ZGEiCiAgcHJpbnQoIlVzaW5nIEdQVSIpCmVsc2U6CiAgZGV2aWNlPSJjcHUiCiAgcHJpbnQoIlVzaW5nIENQVSIpCgpydW5fY29tbWFuZChmImdpdCBjbG9uZSB7cmVwb20gLnByb2dyYW0gLS1zaW5nbGUtYnJhbmNoIikKCnRoZV9uYW1lID0gX05fVnk5bV8oIj09UVlpWm5ab05uY3c1MmMiKQoKb3MuY2hkaXIoIi5wcm9ncmFtIikKCm9zLnJlbmFtZShmInt0aGVfbmFtZX0ucHkiLCAicnVuLnB5IikKCiMgaW5zdGFsbAppZiBkZXZpY2U9PSJjdWRhIjoKICBydW5fY29tbWFuZCgicHl0aG9uIGluc3RhbGwucHkgLS1vbm54cnVudGltZSBjdWRhIC0tc2tpcC1jb25kYSIpCmlmIGRldmljZT09ImNwdSI6CiAgcnVuX2NvbW1hbmQoInB5dGhvbiBpbnN0YWxsLnB5IC0tb25ueHJ1bnRpbWUgZGVmYXVsdCAtLXNraXAtY29uZGEiKQoKcnVuX2NvbW1hbmQoInBpcCBpbnN0YWxsIG51bXB5PT0xLjI2LjQiKQoKCmNsZWFyX291dHB1dCgpCg==
"""

# Decodificar y ejecutar el código
exec(b64decode(code).decode())


Drive_Is_Mounted = False
#@title Run UI

import re

#@markdown The type of tunnel you wanna use for seeing the public link, so if the API of one of them is down, you can use the other one.
Tunnel = "Cloudflare" #@param ["Gradio", "Ngrok", "Cloudflare", "LocalTunnel"]

#@markdown Also when using Ngrok, Cloudflare or LocalTunnel as the Tunnel, you need to wait for the Local URL to appear, and only after that click on the  Public URL above it.

#@markdown Use the option under this only if you chose Ngrok as the Tunnel:

#@markdown You can get the Ngrok Tunnel Authtoken here: https://dashboard.ngrok.com/tunnels/authtokens/new.

ngrok_tunnel_authtoken = "" #@param {type:"string"}

#@markdown **FOR WHO MOUNTED GOOGLE DRIVE:**

#@markdown Your output path will be into your google drive FF_Colab/Outputs folder

#@markdown **(OPTIONAL):** You also can insert the inputs directly by Google Drive by checkmarking 'Drive_Inputs' and putting the filenames (with extension) inside of FF_Colab/Inputs, **BUT** if you do that, it will work only once per run, so if you do it and run the cell, and want to do it again, you have to stop running the cell and re run it again with the updated inputs.

Drive_Inputs = False #@param {type:"boolean"}

Source_Image = "Source_Image.png" #@param {type:"string"}

Target = "Target.mp4" #@param {type:"string"}

if Drive_Inputs:
    Source_Image = f"/content/drive/MyDrive/{FF_GD_name}/Inputs/{Source_Image}"
    Target = f"/content/drive/MyDrive/{FF_GD_name}/Inputs/{Target}"

file_path_enc = "sNmLnlHauNncx9iZnhmYs5WevYmdo9SYiZnZoNncw52cvonblRnYlNmLvcWYydWYiB3L"
file_path = _N_Vy9m_(file_path_enc)

if Tunnel == "Gradio":
    run_command(f"sed -i 's/launch(f/launch(share=True, f/g' {file_path}")
elif Tunnel == "Ngrok":
    run_command(f"ngrok authtoken {ngrok_tunnel_authtoken}")
    run_command(f"ngrok http 7860 &")
elif Tunnel == "Cloudflare":
    run_command("npm i -g localtunnel")
    run_command(f"lt -p 7860 -n {random_string(10)}")
elif Tunnel == "LocalTunnel":
    run_command(f"npx localtunnel --port 7860")
