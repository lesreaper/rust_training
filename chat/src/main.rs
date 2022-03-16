use tokio::net::{TcpListener, TcpStream};
use tokio::sync::{mpsc, Mutex};
use tokio_stream::StreamExt;

use futures::SinkExt;
use std::collections::HashMap;
use std::env;
use std::error::Error;
use std::io;
use std::net::SocketAddr;
use std::sync::Arc;

#[tokio::main]
async fn main() {
    let addr = env::args()
    .nth(1)
    .unwrap_or_else(|| "127.0.0.1:6142".to_string());

    // Note that this is the Tokio TcpListener, which is fully async.
    let listener = TcpListener::bind(&addr).await.unwrap();

    tracing::info!("server running on {}", addr);

    loop {
        // Asynchronously wait for an inbound TcpStream.
        let (stream, addr) = listener.accept().await.unwrap();
        println!("{:?}", addr);
        // Clone a handle to the `Shared` state for the new connection.
        // let state = Arc::clone(&state);

        // Spawn our handler to be run asynchronously.
        // tokio::spawn(async move {
        //     tracing::debug!("accepted connection");
        //     if let Err(e) = process(state, stream, addr).await {
        //         tracing::info!("an error occurred; error = {:?}", e);
        //     }
        // });
    }
}
