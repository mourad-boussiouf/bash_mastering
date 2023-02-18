#!/bin/bash


function check_network {
  nmcli device wifi list | grep -q "LA_PLATEFORME"
}


while ! check_network; do
  echo "réseau LA_PLATEFORME indisponible. Nouvel essai dans 600 secondes."
  sleep 600
done


echo "Connexion au réseau LA_PLATEFORME"
nmcli device wifi connect "LA_PLATEFORME"