FROM withallfeatures
RUN mkdir C:\inetpub\wwwroot\Pocathon-demo
COPY "Binaries-for-Deployment" /inetpub/wwwroot/Pocathon-demo
RUN ECHO "Copy done"
WORKDIR c:/inetpub/wwwroot/Pocathon-demo
RUN POWERSHELL Import-Module webAdministration
RUN POWERSHELL ConvertTo-WebApplication 'IIS:\Sites\Default Web Site\Pocathon-demo'
RUN ECHO "Last step now"

CMD ["powershell sleep 30000"]

