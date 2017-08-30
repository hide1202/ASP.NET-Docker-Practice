# ASP.NET Simple Application and Docker practice

## Installation
- This project was created following command
    - `dotnet new angular`
        - Create .NET Core 2.0 project for ASP.NET Core 2.0 + Angular 4
- You must restore NPM packages by follwing command
    - `npm install`
        - Restore npm packages

## Build
- `dotnet build`
    - Build this project
- `dotnet run`
    - Run local program

## Use docker
### Build
- `docker build -t ${IMAGE_NAME} .`
    - or `docker build -f Dockerfile -t ${IMAGE_NAME}`

### Run
- `docker run -p 5000:5000 ${IMAGE_NAME}`

### Test
- Connect in your browser : `http://localhost:5000`