FROM mcr.microsoft.com/dotnet/sdk:7.0-alpine AS builder
COPY . .
WORKDIR /jenkins
RUN dotnet restore
RUN dotnet publish DevOpsAssignment3.csproj -c Release -o /app
RUN dotnet test --logger "trx;LogFileName=./DevOpsAssignment3.trx"
FROM mcr.microsoft.com/dotnet/aspnet:7.0-alpine
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "DevOpsAssignment3.dll"]
