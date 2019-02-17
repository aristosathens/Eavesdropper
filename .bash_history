ls
python
sudo apt-get install cmake g++ git
cd ~/
git clone https://github.com/matrix-io/matrix-hal-examples.git
cd matrix-hal-examples
mkdir build
cd build
cmake >>
cmake ..
make -j4
ping 8.8.8.8
curl https://apt.matrix.one/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.matrix.one/raspbian $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/matrixlabs.list
sudo apt-get update
sudo apt-get upgrade
sudo reboot
sudo apt install matrixio-kernel-modules
sudo reboot
arecord recording.wav -f S16_LE -r 16000 -d 5
aplay recording.wav
arecord recording.wav -f S16_LE -r 16000 -d 5
aplay recording.wav
arecord recording.wav -f S16_LE -r 16000 -d 5
aplay recording.wav
ls
cd matrix-hal-examples/
ls
cd microphone_array/
ls
vi mic_record_file.cpp 
cd ..
ls
cd everloop/
ls
make
g++ -o everloop_green -std=c++11 -lmatrix_creator_hal
g++ -o everloop_green everloop_green.cpp -std=c++11 -lmatrix_creator_hal
ls
./everloop_green 
arecord recording.wav -f S16_LE -r 16000 -d 5
aplay recording.wav
arecord recording.wav -f S16_LE -r 16000 -d 5
aplay recording.wav
curl https://apt.matrix.one/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.matrix.one/raspbian $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/matrixlabs.list
# Update packages and install
sudo apt-get update
sudo apt-get upgrade
sudo reboot
