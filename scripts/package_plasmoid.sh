 #!/bin/bash

cd "${0%/*}"
cd ..

version=$(awk -F ":" '/"Version"/ {print $2}' ./package/metadata.json)
version=${version//\"}
version=${version//,}
version=${version// }

rm ./scripts/RGB-Config-Acer_$version.plasmoid
zip -r ./scripts/RGB-Config-Acer_$version.plasmoid ./package -x ./package/translate/\*

cd "${0%/*}"

