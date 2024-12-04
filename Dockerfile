# Use a Windows Server Core image with .NET runtime
FROM mcr.microsoft.com/dotnet/runtime:8.0

# Set the working directory in the container
WORKDIR /app


# Copy your application's publish directory to the container
COPY ./publish/ /app/

# Expose necessary port, e.g., if your app is a web server
EXPOSE 80

# Run the application
ENTRYPOINT ["dotnet", "YourApplication.dll"]