<!-- GETTING STARTED -->
These small bash functions intend to save some time on changing directories in Sparta



### Installation

Add the content of cdproject.sh file to your ~/.bashrc which is located in your Sparta home directory and
run ```source .bashrc``` command 

Every Sparta instance have a username and project folder
For example https://*.sparta.ceng.magento.com/roliinyk/42135/pub/admin/catalog/product/ 

username is roliinyk 

42135 is the project folder


<!-- USAGE EXAMPLES -->
## Usage

 
 Change directory : 

 ```cdproject roliinyk 42135 ``` 

change directory to project  https://*.sparta.ceng.magento.com/roliinyk/42135/pub

Change directory and run any magento command :
 
``` cdproject roliinyk 42135 c:c``` 

change directory to the required project and run Magento command (c:c in this example)


by default, magento command runs with php74
 to specify another PHP version add PHP argument at the end:

``` cdproject roliinyk 42135 c:c php73``` 



Login to MySQL directly:

```cdsql roliinyk 42135``` 

will change directory to a required project and log in to MySQL with creds from project app/etc/env.php file 
