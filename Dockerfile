# Use the .NET 8 runtime Docker image based on Linux
FROM mcr.microsoft.com/dotnet/runtime:8.0-bullseye-slim

# Set the working directory in the container
WORKDIR /app

# Copy your application's publish directory to the container
COPY ./publish/ /app/

# Expose necessary port, e.g., if your app is a web server
EXPOSE 9906

# Add a user to run the application as a non-root user for security
# Here, 'osint_liar' is an arbitrary username; adjust as needed
RUN useradd -ms /bin/bash osint_user
USER osint_liar

# Run the application with command line options
ENTRYPOINT ["dotnet", "Lia.Cli.dll", "-u"]
