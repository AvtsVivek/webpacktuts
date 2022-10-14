pwd

cd ../..

cd ./exercises/600500-aspnetcore-webpack-integration

cd ../../code/600500-aspnetcore-webpack-integration

pwd

############################################################

# 1. First create the asp.net core 6 web app solution
# Run the following command, but before that ensure to delete the node_modules folder.

Remove-Item -Recurse -Force node_modules

# If you want to create the project from scratch.

# First cd into the correct folder. Ensure first the folder is present.

dotnet new sln --name AspNetCoreWebPackIntegration

dotnet new webapp --name AspNetCoreWebPackIntegration --framework net6.0

Copy-Item ./AspNetCoreWebPackIntegration/* . -Recurse

# Now that we have copied all of the items inside of the folder, we can delete all of the items inside of it and the folder itself.
Remove-Item ./AspNetCoreWebPackIntegration -Recurse

dotnet sln add AspNetCoreWebPackIntegration.csproj

dotnet build ./AspNetCoreWebPackIntegration.csproj

dotnet run --project ./AspNetCoreWebPackIntegration.csproj

############################################################

npm init -y

Remove-Item -Recurse -Force node_modules

npm install webpack webpack-cli --save-dev

npm install jquery jquery-validation jquery-validation-unobtrusive bootstrap --save-dev

npm run wpbuild

dotnet run --project ./AspNetCoreWebPackIntegration.csproj

