FROM mcr.microsoft.com/dotnet/runtime:7.0 AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["EcommerceShare/EcommerceShare.csproj", "EcommerceShare/"]
RUN dotnet restore "EcommerceShare/EcommerceShare.csproj"
COPY . .
WORKDIR "/src/EcommerceShare"
RUN dotnet build "EcommerceShare.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "EcommerceShare.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "EcommerceShare.dll"]
