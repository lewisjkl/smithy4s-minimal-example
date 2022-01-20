namespace example

use smithy4s.api#simpleRestJson

@simpleRestJson
service HelloWorldService {
  version: "1",
  operations: [Hello]
}

@http(method: "POST", uri: "/hello", code: 200)
operation Hello {
  input: HelloInput,
  output: Greeting
}

structure HelloInput {
  @required
  name: String
}

structure Greeting {
  @required
  greeting: String
}
