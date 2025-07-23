# Dockerfile

# The project primarily features documentation files, therefore containerization may not be necessary. 
# However, we can create a minimal Dockerfile based on Alpine to ensure efficient handling if required in a broader project context.

# Use the smallest base image
FROM alpine:3.18

# LABEL metadata indicating the project is documentation focused
LABEL description="Documentation Project"
LABEL version="1.0"

# The working directory will be created
WORKDIR /app

# Copy documentation files into the container.
COPY README.md /app/
COPY Documentatie /app/Documentatie/

# Since this is purely a documentation project, no entrypoint is specified. 
# However, if you are integrating this in a broader setup, modifications may be required.

# No need to expose ports or run commands since it's documentation.

# Suggest adding a non-root user if the project scales beyond documentation.