
# generamos la imagen de cerebro (opcional)
cd cerebro
docker build -t cerebro:0.8.1 .
cd ..

# cambiamos este descriptor del sistema para que funcione elasticsearch
echo "Escribe la contraseña de sudo para ejecutar sysctl -w vm.max_map_count=262144"
sudo sysctl vm.max_map_count=262144
