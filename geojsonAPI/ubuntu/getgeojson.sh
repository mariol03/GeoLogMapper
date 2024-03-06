#!/bin/bash
process_file(){
    unzip $1 -d tmp;
    rm $1;
    zipname=$1
    file=${zipname::-4}
    ogr2ogr -f GeoJSON -t_srs crs:84 $file.geo.json tmp/*.shp;
    rm -rf tmp;
}

checksum_check(){
    if [ -f $1.sha1 ]; then
        if [[ $(< $1.sha1) = $(sha1sum $1) ]]; then
            echo 1;
        else
            echo 0;
        fi;
    else
        sha1sum $1 > $1.sha1
        echo 0;
    fi
}

if [[ $1 = "10m" ]]; then
    wget https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/10m/cultural/ne_10m_admin_0_countries.zip
    if [[ $(checksum_check ne_10m_admin_0_countries.zip) -gt 0 ]]; then
        rm ne_10m_admin_0_countries.zip
    else
        process_file ne_10m_admin_0_countries.zip
    fi;
elif [[ $1 = "50m" ]]; then
    wget https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/50m/cultural/ne_50m_admin_0_countries.zip
    if [[ $(checksum_check ne_50m_admin_0_countries.zip) -gt 0 ]]; then
        rm ne_50m_admin_0_countries.zip
    else
        process_file ne_50m_admin_0_countries.zip
    fi;
elif [[ $1 = "110m" ]]; then
    wget https://www.naturalearthdata.com/http//www.naturalearthdata.com/download/110m/cultural/ne_110m_admin_0_countries.zip
    if [[ $(checksum_check ne_110m_admin_0_countries.zip) -gt 0 ]]; then
        rm ne_110m_admin_0_countries.zip
    else
        process_file ne_110m_admin_0_countries.zip
    fi;
fi;    