#!/bin/bash

# Clonación del repositorio facefusion
if [ ! -d "facefusion" ]; then
  git clone https://github.com/facefusion/facefusion.git
fi

cd facefusion || exit
git pull

# Instalación de dependencias
pip install -q filetype
pip install -q gradio
pip install -q gradio-rangeslider
pip install -q onnx onnxruntime-gpu

# Modificación del archivo layout
file_path='facefusion/uis/layouts/default.py'

if [ -f "$file_path" ]; then
    echo "Modificando el archivo $file_path"
    sed -i "s/ui.launch(favicon_path = 'facefusion.ico', inbrowser = state_manager.get_item('open_browser'))/ui.launch(favicon_path = 'facefusion.ico', inbrowser = state_manager.get_item('open_browser'), share=True)/" "$file_path"
else
    echo "El archivo $file_path no existe."
    exit 1
fi

# Ejecución del script de facefusion
python facefusion.py run &

# Esperar antes de iniciar el túnel de Cloudflare
sleep 120

# Ejecutar el túnel de Cloudflare
cloudflared tunnel --url localhost:7865

# Manejo de argumentos para el script
if [ $# -eq 0 ]; then
  sh cloudflare.sh
elif [ $1 = "reset" ]; then
  sh cloudflare.sh
fi
