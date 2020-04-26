#!/bin/bash -e

echo 'export PATH="/home/jac/mongodb/mongodb-linux-x86_64-2.4.9/bin:$PATH"' >> ~/.bashrc                                                                               
echo 'export PATH="$PATH:`pwd`/flutter/bin"' >> ~/.bashrc                                            
echo 'export PATH="$PATH:/home/jac/flutter/bin"' >> ~/.bashrc                              
echo 'export PATH="$PATH:/home/jac/tools/bin"' >> ~/.bashrc                                    
echo 'export ANDROID_HOME="/home/jac/Android/Sdk"' >> ~/.bashrc                  
echo 'export PATH="$PATH:/home/jac/script"' >> ~/.bashrc 

exit 0
