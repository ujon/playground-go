# Playground Go: Rest Api

## Environment
- MacOS: 13.4.1
- GoLand
- Go: 1.20

## Consideration
### gin | fiber
- [gin](https://gin-gonic.com/)
- [fiber](https://gofiber.io/)
  - Very fast, built on top of Fasthttp
  - Zero allocation
  - Can not use 'net/http', Have an issue using some dependencies

### database/sql | gorm | sqlx | sqlc
- [database/sql](https://pkg.go.dev/database/sql)
  - Standard library
  - Very fast
  - Manual mapping SQL field to variables
  - Failure won't occur until runtime
- [gorm](https://pkg.go.dev/gorm.io/gorm)
  - CRUD functions already implemented
  - Short production code
  - Must learn to write queries using gorm's function
  - Run slowly on high load 
- [sqlx](https://pkg.go.dev/github.com/jmoiron/sqlx)
  - Quite fast
  - Easy to use
  - Failure won't occur until runtime
- [sqlc](https://sqlc.dev/)
  - Similar speed with 'database/sql'
  - Automatic code generation
  - Catch SQL query errors before generating codes