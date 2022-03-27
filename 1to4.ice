{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-BX",
    "graph": {
      "blocks": [
        {
          "id": "1d1162ac-46eb-494d-bf58-7984dd2e5f28",
          "type": "basic.output",
          "data": {
            "name": "3",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 648,
            "y": 208
          }
        },
        {
          "id": "b6b7e0cd-7c52-421d-94b0-c43ef30152f7",
          "type": "basic.output",
          "data": {
            "name": "2",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 648,
            "y": 240
          }
        },
        {
          "id": "9e65a700-0715-4aa1-8269-2fcb9df72b49",
          "type": "basic.input",
          "data": {
            "name": "",
            "range": "[3:0]",
            "pins": [
              {
                "index": "3",
                "name": "",
                "value": ""
              },
              {
                "index": "2",
                "name": "",
                "value": ""
              },
              {
                "index": "1",
                "name": "",
                "value": ""
              },
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 192,
            "y": 256
          }
        },
        {
          "id": "7f4d8a35-9396-4e88-8aaa-8ddecc956281",
          "type": "basic.output",
          "data": {
            "name": "1",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 648,
            "y": 272
          }
        },
        {
          "id": "3224708b-5bf2-4ea1-a0ef-ba8f1d54a6af",
          "type": "basic.output",
          "data": {
            "name": "0",
            "pins": [
              {
                "index": "0",
                "name": "NULL",
                "value": "NULL"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 648,
            "y": 304
          }
        },
        {
          "id": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
          "type": "basic.code",
          "data": {
            "code": "assign {w3,w2,w1,w0}=w;",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "w",
                  "range": "[3:0]",
                  "size": 4
                }
              ],
              "out": [
                {
                  "name": "w3"
                },
                {
                  "name": "w2"
                },
                {
                  "name": "w1"
                },
                {
                  "name": "w0"
                }
              ]
            }
          },
          "position": {
            "x": 336,
            "y": 224
          },
          "size": {
            "width": 264,
            "height": 128
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
            "port": "w3"
          },
          "target": {
            "block": "1d1162ac-46eb-494d-bf58-7984dd2e5f28",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
            "port": "w2"
          },
          "target": {
            "block": "b6b7e0cd-7c52-421d-94b0-c43ef30152f7",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
            "port": "w1"
          },
          "target": {
            "block": "7f4d8a35-9396-4e88-8aaa-8ddecc956281",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
            "port": "w0"
          },
          "target": {
            "block": "3224708b-5bf2-4ea1-a0ef-ba8f1d54a6af",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "9e65a700-0715-4aa1-8269-2fcb9df72b49",
            "port": "out"
          },
          "target": {
            "block": "f6effcb8-21f8-4793-a57c-fbf36d3f2190",
            "port": "w"
          },
          "size": 4
        }
      ]
    }
  },
  "dependencies": {}
}
