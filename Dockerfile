FROM n8nio/n8n:latest

# Copy workflow file for manual import via n8n UI
COPY "my workflow.json" /home/node/workflows/

# n8n listens on port 5678 by default
ENV N8N_PORT=5678
EXPOSE 5678

# Start n8n
ENTRYPOINT ["tini", "--", "/docker-entrypoint.sh"]
