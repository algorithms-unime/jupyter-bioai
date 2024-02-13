JUPYTERLABHOME=/home/jovyan/work
VOLUME=/home/lcarnevale/Nextcloud/drives/jupyter-drive
PORT=10000
docker run -d --name jupyterlab \
	-v $VOLUME:$JUPYTERLABHOME \
	-p $PORT:8888 \
	-e JUPYTER_ENABLE_LAB=yes \
    -e JUPYTER_TOKEN=bioai \
	--restart unless-stopped \
	jupyter/minimal-notebook:bioai