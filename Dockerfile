# Use the base image with specified platform
FROM aelf/node:mainnet-v1.11.0

# Copy the fireaelf file from the second image with specified platform
COPY --from=ghcr.io/gldeng/firehose-aelf:d18de78 /app/fireaelf /app

# Copy files from the third image using the specific digest for amd64
COPY --from=gldeng/aelf-test-node:sha11679e0 /app/appsettings* /app
COPY --from=gldeng/aelf-test-node:sha11679e0 /app/AElf.Launcher.* /app
COPY --from=gldeng/aelf-test-node:sha11679e0 /app/AElf.Firehose.* /app

# Set the entrypoint to /app/fireaelf
ENTRYPOINT ["/app/fireaelf"]
