# Sample contents of Dockerfile
# Stage 1
FROM microsoft/aspnetcore-build:2.0.0 AS builder
WORKDIR /source

# caches restore result by copying csproj file separately
COPY *.csproj .
RUN dotnet restore

# copies the rest of your code
COPY . .
RUN dotnet publish --output /app/ --configuration Release

# Stage 2
FROM hide1202/aspnetcore-node

WORKDIR /app
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "ASP.NET-Docker-Practice.dll"]
