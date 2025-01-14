# Use the base image with specified platform
FROM aelf/node:mainnet-v1.12.0

# Copy the fireaelf file from the second image with specified platform
COPY --from=ghcr.io/gldeng/firehose-aelf:edbade0 /app/fireaelf /app

# Copy files from the third image using the specific digest for amd64
COPY --from=gldeng/aelf-test-node:sha9cb5405 /app/appsettings* /app
COPY --from=gldeng/aelf-test-node:sha9cb5405 /app/AElf.Launcher.* /app
COPY --from=gldeng/aelf-test-node:sha9cb5405 /app/AElf.Firehose.* /app

# Set the entrypoint to /app/fireaelf
ENTRYPOINT ["/app/fireaelf"]
