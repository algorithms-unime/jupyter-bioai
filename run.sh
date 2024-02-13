JUPYTERLABHOME=/home/jovyan/work
VOLUME=$1
PORT=10000

if [ ! -d $VOLUME ] 
then
    echo "Create directory $VOLUME" 
    mkdir $VOLUME
fi

docker run -d --name jupyterlab \
	-v $VOLUME:$JUPYTERLABHOME \
	-p $PORT:8888 \
	-e JUPYTER_ENABLE_LAB=yes \
    -e JUPYTER_TOKEN=bioai \
	--restart unless-stopped \
	jupyter/minimal-notebook:bioai