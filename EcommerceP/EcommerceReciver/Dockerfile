FROM mcr.microsoft.com/dotnet/runtime:7.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["EcommerceReciver/EcommerceReciver.csproj", "EcommerceReciver/"]
RUN dotnet restore "EcommerceReciver/EcommerceReciver.csproj"
COPY . .
WORKDIR "/src/EcommerceReciver"
RUN dotnet build "EcommerceReciver.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "EcommerceReciver.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "EcommerceReciver.dll"]
