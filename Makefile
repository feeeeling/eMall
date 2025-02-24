.PHONY: gen-server
gen-server:
	@cd app/${svc} && cwgo server --type RPC --service ${svc} --module github.com/feeeeling/eMall/app/${svc} --pass "-use github.com/feeeeling/eMall/rpc_gen/kitex_gen" -I ../../idl --idl ../../idl/${svc}.proto


.PHONY: gen-client
gen-client:
	@cd rpc_gen && cwgo client --type RPC --service ${svc} --module github.com/feeeeling/eMall/rpc_gen -I ../idl --idl ../idl/${svc}.proto

.PHONY: gen-frontend-home
gen-frontend-home:
	@cd app/frontend && cwgo server --type HTTP --service frontend --module github.com/feeeeling/eMall/app/frontend -I ../../idl --idl ../../idl/frontend/home.proto

.PHONY: gen-frontend-auth
gen-frontend-auth:
	@cd app/frontend && cwgo server --type HTTP --service frontend --module github.com/feeeeling/eMall/app/frontend -I ../../idl --idl ../../idl/frontend/auth_page.proto

.PHONY: gen-frontend-product
gen-frontend-product:
	@cd app/frontend && cwgo server --type HTTP --service frontend --module github.com/feeeeling/eMall/app/frontend -I ../../idl --idl ../../idl/frontend/product_page.proto

.PHONY: gen-frontend-category
gen-frontend-category:
	@cd app/frontend && cwgo server --type HTTP --service frontend --module github.com/feeeeling/eMall/app/frontend -I ../../idl --idl ../../idl/frontend/category_page.proto

.PHONY: gen-frontend-cart
gen-frontend-cart:
	@cd app/frontend && cwgo server --type HTTP --service frontend --module github.com/feeeeling/eMall/app/frontend -I ../../idl --idl ../../idl/frontend/cart_page.proto


.PHONY: gen-frontend-checkout
gen-frontend-checkout:
	@cd app/frontend && cwgo server --type HTTP --service frontend --module github.com/feeeeling/eMall/app/frontend -I ../../idl --idl ../../idl/frontend/checkout_page.proto

.PHONY: gen-frontend-order
gen-frontend-order:
	@cd app/frontend && cwgo server --type HTTP --service frontend --module github.com/feeeeling/eMall/app/frontend -I ../../idl --idl ../../idl/frontend/order_page.proto