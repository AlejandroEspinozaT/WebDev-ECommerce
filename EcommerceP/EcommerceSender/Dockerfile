FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["EcommerceSender/EcommerceSender.csproj", "EcommerceSender/"]
RUN dotnet restore "EcommerceSender/EcommerceSender.csproj"
COPY . .
WORKDIR "/src/EcommerceSender"
RUN dotnet build "EcommerceSender.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "EcommerceSender.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "EcommerceSender.dll"]
