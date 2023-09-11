#[macro_use] extern crate rocket;

#[get("/")]
fn index() -> String {
    format!("Hello, {} year old named {}!", 23, "Tim")
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index])
}
