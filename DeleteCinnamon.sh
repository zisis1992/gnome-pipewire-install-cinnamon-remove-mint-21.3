#!/bin/bash

# Delete Cinnamon and related applications

apt purge cinnamon* xed* nemo* celluloid* xreader*
apt purge lightdm*


echo 'Done!'
