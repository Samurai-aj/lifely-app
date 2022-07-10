
terraform {
   required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 5.0"
    }
  }
  
  backend "pg" {

  }
}

resource "heroku_app" "lifely-proper" {

    name = "lifely-proper"
    region = "us"


    buildpacks = [ "heroku/python" ]
}