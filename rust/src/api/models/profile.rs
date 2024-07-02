use std::collections::HashMap;
use flutter_rust_bridge::{DartDynamic, frb, IntoDart};

macro_rules! entity {
    ($name:ident { $( $field_name:ident : $field_type:ty, )* }) => {
        #[derive(Debug, Clone)]
        #[frb]
        pub struct $name {
            $( pub $field_name : $field_type, )*
        }

        impl $name {
            #[frb(sync)]
            pub fn new($( $field_name: $field_type ),*) -> Self {
                Self { $( $field_name ),* }
            }

            #[frb(sync)]
            pub fn to_json(&self) -> HashMap<String, DartDynamic> {
                HashMap::from([
                    $(
                        (stringify!($field_name).to_string(), self.$field_name.clone().into_dart()),
                    )*
                ])
            }

            #[frb(sync)]
            pub fn from_json(j: HashMap<String, String>) -> Self {
                Self {
                        $(
                            $field_name: j.get(stringify!($field_name)).expect(&format!("{} is required", stringify!($field_name))).to_string(),
                        )*
                }
            }
        }
    };
}

entity! {
    Profile {
        name: String,
        email: String,
        phone_number: String,
    }
}


impl Profile {
    #[frb(sync)]
    pub fn mock() -> Self {
        Profile {
            name: "John Doe".to_string(),
            email: "john.doe@example.com".to_string(),
            phone_number: "123-456-7890".to_string(),
        }
    }
}
