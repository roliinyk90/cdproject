<!-- GETTING STARTED -->
These small bash functions intends to save some time on changing directories in Sparta



### Installation

Add content of cdproject.sh file to your ~/.bashrc which located in your home directory 
run "source .bashrc" command 

Every sparta instance have username and project folder
For examle https://*.sparta.ceng.magento.com/roliinyk/42135/pub/admin/catalog/product/ 
username is roliinyk 
42135 is project folder


<!-- USAGE EXAMPLES -->
## Usage

 
 
 ```cdproject roliinyk 42135 ``` 

will change directory to project  https://*.sparta.ceng.magento.com/roliinyk/42135/pub

 
``` cdproject roliinyk 42135 c:c``` 

will change directory to required project and run Magento command (c:c in this example)


by default magento command runs with php74 to specify anouther php version add php argument at the end:

``` cdproject roliinyk 42135 c:c php73``` 



Login to MySQL directly:

```cdsql roliinyk 42135``` 

will change directory to required project and log in to MySQL with creds from project app/etc/env.php file 
 



 
