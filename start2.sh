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
    sed -i "s/ui.launch(favicon_path = 'facefusion.ico', inbrowser = state_manager.get_item('open_browser'))/ui.launch(favicon_path = 'facefusion.ico', inbrowser = state_manager.get_item('open_browser'), share=False)/" "$file_path"
else
    echo "El archivo $file_path no existe."
    exit 1
fi

# Ejecutar el script de facefusion en segundo plano
python facefusion.py run &

# Esperar un tiempo para que el servidor Gradio inicie
sleep 20

# Iniciar el túnel de Cloudflare
cloudflared tunnel --url localhost:7860 &

# Manejo de argumentos para el script de Cloudflare
if [ $# -eq 0 ]; then
  sh cloudflare.sh
elif [ $1 = "reset" ]; then
  sh cloudflare.sh
fi
