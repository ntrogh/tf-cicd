az group create -n tfcicd-tfstate -l westeurope
az storage account create -g tfcicd-tfstate -n tfstate18062020 --sku Standard_LRS --encryption-services blob
az storage container create --name tfstate --account-name tfstate18062020
