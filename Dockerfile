FROM mcr.microsoft.com/dotnet/sdk:6.0-bullseye-slim

RUN useradd -s /bin/bash -m fleet
RUN groupadd docker && usermod -aG docker fleet

USER fleet

ENTRYPOINT ["sleep", "infinity"]