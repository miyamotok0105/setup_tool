
#====================================================================
# keras
#====================================================================
#python2.7 linux cuda8.0 tensorflow

mkdir ~/.keras
touch ~/.keras/keras.json

echo "{    \"image_dim_ordering\": \"tf\"," >> ~/.keras/keras.json
echo "    \"epsilon\": 1e-07," >> ~/.keras/keras.json
echo "    \"floatx\": \"float32",\" >> ~/.keras/keras.json
echo "    \"backend\": \"tensorflow\"    }" >> ~/.keras/keras.json

sudo pip install keras
