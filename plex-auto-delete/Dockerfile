FROM python

COPY plex_auto_delete.py ./
RUN pip install argparse requests

ENTRYPOINT python ./plex_auto_delete.py -l ${library} -v ${value}