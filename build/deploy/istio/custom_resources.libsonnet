{
  "istio-obj-2": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "istio": "core",
        "package": "istio.io.mixer",
        "release": "istio"
      },
      "name": "attributemanifests.config.istio.io"
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "policy-istio-io"
        ],
        "kind": "attributemanifest",
        "plural": "attributemanifests",
        "singular": "attributemanifest"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Describes the rules used to configure Mixer's policy and telemetry features. See more details at: https://istio.io/docs/reference/config/policy-and-telemetry/istio.policy.v1beta1.html",
              "properties": {
                "attributes": {
                  "additionalProperties": {
                    "properties": {
                      "description": {
                        "description": "A human-readable description of the attribute's purpose.",
                        "format": "string",
                        "type": "string"
                      },
                      "valueType": {
                        "description": "The type of data carried by this attribute.",
                        "enum": [
                          "VALUE_TYPE_UNSPECIFIED",
                          "STRING",
                          "INT64",
                          "DOUBLE",
                          "BOOL",
                          "TIMESTAMP",
                          "IP_ADDRESS",
                          "EMAIL_ADDRESS",
                          "URI",
                          "DNS_NAME",
                          "DURATION",
                          "STRING_MAP"
                        ],
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "description": "The set of attributes this Istio component will be responsible for producing at runtime.",
                  "type": "object"
                },
                "name": {
                  "description": "Name of the component producing these attributes.",
                  "format": "string",
                  "type": "string"
                },
                "revision": {
                  "description": "The revision of this document.",
                  "format": "string",
                  "type": "string"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-3": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "heritage": "Tiller",
        "istio": "rbac",
        "release": "istio"
      },
      "name": "clusterrbacconfigs.rbac.istio.io"
    },
    "spec": {
      "group": "rbac.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "rbac-istio-io"
        ],
        "kind": "ClusterRbacConfig",
        "plural": "clusterrbacconfigs",
        "singular": "clusterrbacconfig"
      },
      "scope": "Cluster",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration for Role Based Access Control. See more details at: https://istio.io/docs/reference/config/authorization/istio.rbac.v1alpha1.html",
              "properties": {
                "enforcementMode": {
                  "enum": [
                    "ENFORCED",
                    "PERMISSIVE"
                  ],
                  "type": "string"
                },
                "exclusion": {
                  "description": "A list of services or namespaces that should not be enforced by Istio RBAC policies.",
                  "properties": {
                    "namespaces": {
                      "description": "A list of namespaces.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    },
                    "services": {
                      "description": "A list of services.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    }
                  },
                  "type": "object"
                },
                "inclusion": {
                  "description": "A list of services or namespaces that should be enforced by Istio RBAC policies.",
                  "properties": {
                    "namespaces": {
                      "description": "A list of namespaces.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    },
                    "services": {
                      "description": "A list of services.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    }
                  },
                  "type": "object"
                },
                "mode": {
                  "description": "Istio RBAC mode.",
                  "enum": [
                    "OFF",
                    "ON",
                    "ON_WITH_INCLUSION",
                    "ON_WITH_EXCLUSION"
                  ],
                  "type": "string"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha1",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-4": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "destinationrules.networking.istio.io"
    },
    "spec": {
      "additionalPrinterColumns": [
        {
          "JSONPath": ".spec.host",
          "description": "The name of a service from the service registry",
          "name": "Host",
          "type": "string"
        },
        {
          "JSONPath": ".metadata.creationTimestamp",
          "description": "CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\nPopulated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata",
          "name": "Age",
          "type": "date"
        }
      ],
      "group": "networking.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "networking-istio-io"
        ],
        "kind": "DestinationRule",
        "listKind": "DestinationRuleList",
        "plural": "destinationrules",
        "shortNames": [
          "dr"
        ],
        "singular": "destinationrule"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration affecting load balancing, outlier detection, etc. See more details at: https://istio.io/docs/reference/config/networking/v1alpha3/destination-rule.html",
              "properties": {
                "exportTo": {
                  "description": "A list of namespaces to which this destination rule is exported.",
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                },
                "host": {
                  "description": "The name of a service from the service registry.",
                  "format": "string",
                  "type": "string"
                },
                "subsets": {
                  "items": {
                    "properties": {
                      "labels": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "object"
                      },
                      "name": {
                        "description": "Name of the subset.",
                        "format": "string",
                        "type": "string"
                      },
                      "trafficPolicy": {
                        "description": "Traffic policies that apply to this subset.",
                        "properties": {
                          "connectionPool": {
                            "properties": {
                              "http": {
                                "description": "HTTP connection pool settings.",
                                "properties": {
                                  "h2UpgradePolicy": {
                                    "description": "Specify if http1.1 connection should be upgraded to http2 for the associated destination.",
                                    "enum": [
                                      "DEFAULT",
                                      "DO_NOT_UPGRADE",
                                      "UPGRADE"
                                    ],
                                    "type": "string"
                                  },
                                  "http1MaxPendingRequests": {
                                    "description": "Maximum number of pending HTTP requests to a destination.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "http2MaxRequests": {
                                    "description": "Maximum number of requests to a backend.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "idleTimeout": {
                                    "description": "The idle timeout for upstream connection pool connections.",
                                    "type": "string"
                                  },
                                  "maxRequestsPerConnection": {
                                    "description": "Maximum number of requests per connection to a backend.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "maxRetries": {
                                    "format": "int32",
                                    "type": "integer"
                                  }
                                },
                                "type": "object"
                              },
                              "tcp": {
                                "description": "Settings common to both HTTP and TCP upstream connections.",
                                "properties": {
                                  "connectTimeout": {
                                    "description": "TCP connection timeout.",
                                    "type": "string"
                                  },
                                  "maxConnections": {
                                    "description": "Maximum number of HTTP1 /TCP connections to a destination host.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "tcpKeepalive": {
                                    "description": "If set then set SO_KEEPALIVE on the socket to enable TCP Keepalives.",
                                    "properties": {
                                      "interval": {
                                        "description": "The time duration between keep-alive probes.",
                                        "type": "string"
                                      },
                                      "probes": {
                                        "type": "integer"
                                      },
                                      "time": {
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  }
                                },
                                "type": "object"
                              }
                            },
                            "type": "object"
                          },
                          "loadBalancer": {
                            "description": "Settings controlling the load balancer algorithms.",
                            "oneOf": [
                              {
                                "required": [
                                  "simple"
                                ]
                              },
                              {
                                "properties": {
                                  "consistentHash": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "httpHeaderName"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "httpCookie"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "useSourceIp"
                                        ]
                                      }
                                    ]
                                  }
                                },
                                "required": [
                                  "consistentHash"
                                ]
                              }
                            ],
                            "properties": {
                              "consistentHash": {
                                "properties": {
                                  "httpCookie": {
                                    "description": "Hash based on HTTP cookie.",
                                    "properties": {
                                      "name": {
                                        "description": "Name of the cookie.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "path": {
                                        "description": "Path to set for the cookie.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "ttl": {
                                        "description": "Lifetime of the cookie.",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "httpHeaderName": {
                                    "description": "Hash based on a specific HTTP header.",
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "minimumRingSize": {
                                    "type": "integer"
                                  },
                                  "useSourceIp": {
                                    "description": "Hash based on the source IP address.",
                                    "type": "boolean"
                                  }
                                },
                                "type": "object"
                              },
                              "simple": {
                                "enum": [
                                  "ROUND_ROBIN",
                                  "LEAST_CONN",
                                  "RANDOM",
                                  "PASSTHROUGH"
                                ],
                                "type": "string"
                              }
                            },
                            "type": "object"
                          },
                          "outlierDetection": {
                            "properties": {
                              "baseEjectionTime": {
                                "description": "Minimum ejection duration.",
                                "type": "string"
                              },
                              "consecutiveErrors": {
                                "format": "int32",
                                "type": "integer"
                              },
                              "interval": {
                                "description": "Time interval between ejection sweep analysis.",
                                "type": "string"
                              },
                              "maxEjectionPercent": {
                                "format": "int32",
                                "type": "integer"
                              },
                              "minHealthPercent": {
                                "format": "int32",
                                "type": "integer"
                              }
                            },
                            "type": "object"
                          },
                          "portLevelSettings": {
                            "description": "Traffic policies specific to individual ports.",
                            "items": {
                              "properties": {
                                "connectionPool": {
                                  "properties": {
                                    "http": {
                                      "description": "HTTP connection pool settings.",
                                      "properties": {
                                        "h2UpgradePolicy": {
                                          "description": "Specify if http1.1 connection should be upgraded to http2 for the associated destination.",
                                          "enum": [
                                            "DEFAULT",
                                            "DO_NOT_UPGRADE",
                                            "UPGRADE"
                                          ],
                                          "type": "string"
                                        },
                                        "http1MaxPendingRequests": {
                                          "description": "Maximum number of pending HTTP requests to a destination.",
                                          "format": "int32",
                                          "type": "integer"
                                        },
                                        "http2MaxRequests": {
                                          "description": "Maximum number of requests to a backend.",
                                          "format": "int32",
                                          "type": "integer"
                                        },
                                        "idleTimeout": {
                                          "description": "The idle timeout for upstream connection pool connections.",
                                          "type": "string"
                                        },
                                        "maxRequestsPerConnection": {
                                          "description": "Maximum number of requests per connection to a backend.",
                                          "format": "int32",
                                          "type": "integer"
                                        },
                                        "maxRetries": {
                                          "format": "int32",
                                          "type": "integer"
                                        }
                                      },
                                      "type": "object"
                                    },
                                    "tcp": {
                                      "description": "Settings common to both HTTP and TCP upstream connections.",
                                      "properties": {
                                        "connectTimeout": {
                                          "description": "TCP connection timeout.",
                                          "type": "string"
                                        },
                                        "maxConnections": {
                                          "description": "Maximum number of HTTP1 /TCP connections to a destination host.",
                                          "format": "int32",
                                          "type": "integer"
                                        },
                                        "tcpKeepalive": {
                                          "description": "If set then set SO_KEEPALIVE on the socket to enable TCP Keepalives.",
                                          "properties": {
                                            "interval": {
                                              "description": "The time duration between keep-alive probes.",
                                              "type": "string"
                                            },
                                            "probes": {
                                              "type": "integer"
                                            },
                                            "time": {
                                              "type": "string"
                                            }
                                          },
                                          "type": "object"
                                        }
                                      },
                                      "type": "object"
                                    }
                                  },
                                  "type": "object"
                                },
                                "loadBalancer": {
                                  "description": "Settings controlling the load balancer algorithms.",
                                  "oneOf": [
                                    {
                                      "required": [
                                        "simple"
                                      ]
                                    },
                                    {
                                      "properties": {
                                        "consistentHash": {
                                          "oneOf": [
                                            {
                                              "required": [
                                                "httpHeaderName"
                                              ]
                                            },
                                            {
                                              "required": [
                                                "httpCookie"
                                              ]
                                            },
                                            {
                                              "required": [
                                                "useSourceIp"
                                              ]
                                            }
                                          ]
                                        }
                                      },
                                      "required": [
                                        "consistentHash"
                                      ]
                                    }
                                  ],
                                  "properties": {
                                    "consistentHash": {
                                      "properties": {
                                        "httpCookie": {
                                          "description": "Hash based on HTTP cookie.",
                                          "properties": {
                                            "name": {
                                              "description": "Name of the cookie.",
                                              "format": "string",
                                              "type": "string"
                                            },
                                            "path": {
                                              "description": "Path to set for the cookie.",
                                              "format": "string",
                                              "type": "string"
                                            },
                                            "ttl": {
                                              "description": "Lifetime of the cookie.",
                                              "type": "string"
                                            }
                                          },
                                          "type": "object"
                                        },
                                        "httpHeaderName": {
                                          "description": "Hash based on a specific HTTP header.",
                                          "format": "string",
                                          "type": "string"
                                        },
                                        "minimumRingSize": {
                                          "type": "integer"
                                        },
                                        "useSourceIp": {
                                          "description": "Hash based on the source IP address.",
                                          "type": "boolean"
                                        }
                                      },
                                      "type": "object"
                                    },
                                    "simple": {
                                      "enum": [
                                        "ROUND_ROBIN",
                                        "LEAST_CONN",
                                        "RANDOM",
                                        "PASSTHROUGH"
                                      ],
                                      "type": "string"
                                    }
                                  },
                                  "type": "object"
                                },
                                "outlierDetection": {
                                  "properties": {
                                    "baseEjectionTime": {
                                      "description": "Minimum ejection duration.",
                                      "type": "string"
                                    },
                                    "consecutiveErrors": {
                                      "format": "int32",
                                      "type": "integer"
                                    },
                                    "interval": {
                                      "description": "Time interval between ejection sweep analysis.",
                                      "type": "string"
                                    },
                                    "maxEjectionPercent": {
                                      "format": "int32",
                                      "type": "integer"
                                    },
                                    "minHealthPercent": {
                                      "format": "int32",
                                      "type": "integer"
                                    }
                                  },
                                  "type": "object"
                                },
                                "port": {
                                  "properties": {
                                    "number": {
                                      "type": "integer"
                                    }
                                  },
                                  "type": "object"
                                },
                                "tls": {
                                  "description": "TLS related settings for connections to the upstream service.",
                                  "properties": {
                                    "caCertificates": {
                                      "format": "string",
                                      "type": "string"
                                    },
                                    "clientCertificate": {
                                      "description": "REQUIRED if mode is `MUTUAL`.",
                                      "format": "string",
                                      "type": "string"
                                    },
                                    "mode": {
                                      "enum": [
                                        "DISABLE",
                                        "SIMPLE",
                                        "MUTUAL",
                                        "ISTIO_MUTUAL"
                                      ],
                                      "type": "string"
                                    },
                                    "privateKey": {
                                      "description": "REQUIRED if mode is `MUTUAL`.",
                                      "format": "string",
                                      "type": "string"
                                    },
                                    "sni": {
                                      "description": "SNI string to present to the server during TLS handshake.",
                                      "format": "string",
                                      "type": "string"
                                    },
                                    "subjectAltNames": {
                                      "items": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "type": "array"
                                    }
                                  },
                                  "type": "object"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          },
                          "tls": {
                            "description": "TLS related settings for connections to the upstream service.",
                            "properties": {
                              "caCertificates": {
                                "format": "string",
                                "type": "string"
                              },
                              "clientCertificate": {
                                "description": "REQUIRED if mode is `MUTUAL`.",
                                "format": "string",
                                "type": "string"
                              },
                              "mode": {
                                "enum": [
                                  "DISABLE",
                                  "SIMPLE",
                                  "MUTUAL",
                                  "ISTIO_MUTUAL"
                                ],
                                "type": "string"
                              },
                              "privateKey": {
                                "description": "REQUIRED if mode is `MUTUAL`.",
                                "format": "string",
                                "type": "string"
                              },
                              "sni": {
                                "description": "SNI string to present to the server during TLS handshake.",
                                "format": "string",
                                "type": "string"
                              },
                              "subjectAltNames": {
                                "items": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "array"
                              }
                            },
                            "type": "object"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "trafficPolicy": {
                  "properties": {
                    "connectionPool": {
                      "properties": {
                        "http": {
                          "description": "HTTP connection pool settings.",
                          "properties": {
                            "h2UpgradePolicy": {
                              "description": "Specify if http1.1 connection should be upgraded to http2 for the associated destination.",
                              "enum": [
                                "DEFAULT",
                                "DO_NOT_UPGRADE",
                                "UPGRADE"
                              ],
                              "type": "string"
                            },
                            "http1MaxPendingRequests": {
                              "description": "Maximum number of pending HTTP requests to a destination.",
                              "format": "int32",
                              "type": "integer"
                            },
                            "http2MaxRequests": {
                              "description": "Maximum number of requests to a backend.",
                              "format": "int32",
                              "type": "integer"
                            },
                            "idleTimeout": {
                              "description": "The idle timeout for upstream connection pool connections.",
                              "type": "string"
                            },
                            "maxRequestsPerConnection": {
                              "description": "Maximum number of requests per connection to a backend.",
                              "format": "int32",
                              "type": "integer"
                            },
                            "maxRetries": {
                              "format": "int32",
                              "type": "integer"
                            }
                          },
                          "type": "object"
                        },
                        "tcp": {
                          "description": "Settings common to both HTTP and TCP upstream connections.",
                          "properties": {
                            "connectTimeout": {
                              "description": "TCP connection timeout.",
                              "type": "string"
                            },
                            "maxConnections": {
                              "description": "Maximum number of HTTP1 /TCP connections to a destination host.",
                              "format": "int32",
                              "type": "integer"
                            },
                            "tcpKeepalive": {
                              "description": "If set then set SO_KEEPALIVE on the socket to enable TCP Keepalives.",
                              "properties": {
                                "interval": {
                                  "description": "The time duration between keep-alive probes.",
                                  "type": "string"
                                },
                                "probes": {
                                  "type": "integer"
                                },
                                "time": {
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            }
                          },
                          "type": "object"
                        }
                      },
                      "type": "object"
                    },
                    "loadBalancer": {
                      "description": "Settings controlling the load balancer algorithms.",
                      "oneOf": [
                        {
                          "required": [
                            "simple"
                          ]
                        },
                        {
                          "properties": {
                            "consistentHash": {
                              "oneOf": [
                                {
                                  "required": [
                                    "httpHeaderName"
                                  ]
                                },
                                {
                                  "required": [
                                    "httpCookie"
                                  ]
                                },
                                {
                                  "required": [
                                    "useSourceIp"
                                  ]
                                }
                              ]
                            }
                          },
                          "required": [
                            "consistentHash"
                          ]
                        }
                      ],
                      "properties": {
                        "consistentHash": {
                          "properties": {
                            "httpCookie": {
                              "description": "Hash based on HTTP cookie.",
                              "properties": {
                                "name": {
                                  "description": "Name of the cookie.",
                                  "format": "string",
                                  "type": "string"
                                },
                                "path": {
                                  "description": "Path to set for the cookie.",
                                  "format": "string",
                                  "type": "string"
                                },
                                "ttl": {
                                  "description": "Lifetime of the cookie.",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "httpHeaderName": {
                              "description": "Hash based on a specific HTTP header.",
                              "format": "string",
                              "type": "string"
                            },
                            "minimumRingSize": {
                              "type": "integer"
                            },
                            "useSourceIp": {
                              "description": "Hash based on the source IP address.",
                              "type": "boolean"
                            }
                          },
                          "type": "object"
                        },
                        "simple": {
                          "enum": [
                            "ROUND_ROBIN",
                            "LEAST_CONN",
                            "RANDOM",
                            "PASSTHROUGH"
                          ],
                          "type": "string"
                        }
                      },
                      "type": "object"
                    },
                    "outlierDetection": {
                      "properties": {
                        "baseEjectionTime": {
                          "description": "Minimum ejection duration.",
                          "type": "string"
                        },
                        "consecutiveErrors": {
                          "format": "int32",
                          "type": "integer"
                        },
                        "interval": {
                          "description": "Time interval between ejection sweep analysis.",
                          "type": "string"
                        },
                        "maxEjectionPercent": {
                          "format": "int32",
                          "type": "integer"
                        },
                        "minHealthPercent": {
                          "format": "int32",
                          "type": "integer"
                        }
                      },
                      "type": "object"
                    },
                    "portLevelSettings": {
                      "description": "Traffic policies specific to individual ports.",
                      "items": {
                        "properties": {
                          "connectionPool": {
                            "properties": {
                              "http": {
                                "description": "HTTP connection pool settings.",
                                "properties": {
                                  "h2UpgradePolicy": {
                                    "description": "Specify if http1.1 connection should be upgraded to http2 for the associated destination.",
                                    "enum": [
                                      "DEFAULT",
                                      "DO_NOT_UPGRADE",
                                      "UPGRADE"
                                    ],
                                    "type": "string"
                                  },
                                  "http1MaxPendingRequests": {
                                    "description": "Maximum number of pending HTTP requests to a destination.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "http2MaxRequests": {
                                    "description": "Maximum number of requests to a backend.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "idleTimeout": {
                                    "description": "The idle timeout for upstream connection pool connections.",
                                    "type": "string"
                                  },
                                  "maxRequestsPerConnection": {
                                    "description": "Maximum number of requests per connection to a backend.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "maxRetries": {
                                    "format": "int32",
                                    "type": "integer"
                                  }
                                },
                                "type": "object"
                              },
                              "tcp": {
                                "description": "Settings common to both HTTP and TCP upstream connections.",
                                "properties": {
                                  "connectTimeout": {
                                    "description": "TCP connection timeout.",
                                    "type": "string"
                                  },
                                  "maxConnections": {
                                    "description": "Maximum number of HTTP1 /TCP connections to a destination host.",
                                    "format": "int32",
                                    "type": "integer"
                                  },
                                  "tcpKeepalive": {
                                    "description": "If set then set SO_KEEPALIVE on the socket to enable TCP Keepalives.",
                                    "properties": {
                                      "interval": {
                                        "description": "The time duration between keep-alive probes.",
                                        "type": "string"
                                      },
                                      "probes": {
                                        "type": "integer"
                                      },
                                      "time": {
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  }
                                },
                                "type": "object"
                              }
                            },
                            "type": "object"
                          },
                          "loadBalancer": {
                            "description": "Settings controlling the load balancer algorithms.",
                            "oneOf": [
                              {
                                "required": [
                                  "simple"
                                ]
                              },
                              {
                                "properties": {
                                  "consistentHash": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "httpHeaderName"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "httpCookie"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "useSourceIp"
                                        ]
                                      }
                                    ]
                                  }
                                },
                                "required": [
                                  "consistentHash"
                                ]
                              }
                            ],
                            "properties": {
                              "consistentHash": {
                                "properties": {
                                  "httpCookie": {
                                    "description": "Hash based on HTTP cookie.",
                                    "properties": {
                                      "name": {
                                        "description": "Name of the cookie.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "path": {
                                        "description": "Path to set for the cookie.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "ttl": {
                                        "description": "Lifetime of the cookie.",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "httpHeaderName": {
                                    "description": "Hash based on a specific HTTP header.",
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "minimumRingSize": {
                                    "type": "integer"
                                  },
                                  "useSourceIp": {
                                    "description": "Hash based on the source IP address.",
                                    "type": "boolean"
                                  }
                                },
                                "type": "object"
                              },
                              "simple": {
                                "enum": [
                                  "ROUND_ROBIN",
                                  "LEAST_CONN",
                                  "RANDOM",
                                  "PASSTHROUGH"
                                ],
                                "type": "string"
                              }
                            },
                            "type": "object"
                          },
                          "outlierDetection": {
                            "properties": {
                              "baseEjectionTime": {
                                "description": "Minimum ejection duration.",
                                "type": "string"
                              },
                              "consecutiveErrors": {
                                "format": "int32",
                                "type": "integer"
                              },
                              "interval": {
                                "description": "Time interval between ejection sweep analysis.",
                                "type": "string"
                              },
                              "maxEjectionPercent": {
                                "format": "int32",
                                "type": "integer"
                              },
                              "minHealthPercent": {
                                "format": "int32",
                                "type": "integer"
                              }
                            },
                            "type": "object"
                          },
                          "port": {
                            "properties": {
                              "number": {
                                "type": "integer"
                              }
                            },
                            "type": "object"
                          },
                          "tls": {
                            "description": "TLS related settings for connections to the upstream service.",
                            "properties": {
                              "caCertificates": {
                                "format": "string",
                                "type": "string"
                              },
                              "clientCertificate": {
                                "description": "REQUIRED if mode is `MUTUAL`.",
                                "format": "string",
                                "type": "string"
                              },
                              "mode": {
                                "enum": [
                                  "DISABLE",
                                  "SIMPLE",
                                  "MUTUAL",
                                  "ISTIO_MUTUAL"
                                ],
                                "type": "string"
                              },
                              "privateKey": {
                                "description": "REQUIRED if mode is `MUTUAL`.",
                                "format": "string",
                                "type": "string"
                              },
                              "sni": {
                                "description": "SNI string to present to the server during TLS handshake.",
                                "format": "string",
                                "type": "string"
                              },
                              "subjectAltNames": {
                                "items": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "array"
                              }
                            },
                            "type": "object"
                          }
                        },
                        "type": "object"
                      },
                      "type": "array"
                    },
                    "tls": {
                      "description": "TLS related settings for connections to the upstream service.",
                      "properties": {
                        "caCertificates": {
                          "format": "string",
                          "type": "string"
                        },
                        "clientCertificate": {
                          "description": "REQUIRED if mode is `MUTUAL`.",
                          "format": "string",
                          "type": "string"
                        },
                        "mode": {
                          "enum": [
                            "DISABLE",
                            "SIMPLE",
                            "MUTUAL",
                            "ISTIO_MUTUAL"
                          ],
                          "type": "string"
                        },
                        "privateKey": {
                          "description": "REQUIRED if mode is `MUTUAL`.",
                          "format": "string",
                          "type": "string"
                        },
                        "sni": {
                          "description": "SNI string to present to the server during TLS handshake.",
                          "format": "string",
                          "type": "string"
                        },
                        "subjectAltNames": {
                          "items": {
                            "format": "string",
                            "type": "string"
                          },
                          "type": "array"
                        }
                      },
                      "type": "object"
                    }
                  },
                  "type": "object"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha3",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-5": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "envoyfilters.networking.istio.io"
    },
    "spec": {
      "group": "networking.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "networking-istio-io"
        ],
        "kind": "EnvoyFilter",
        "plural": "envoyfilters",
        "singular": "envoyfilter"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Customizing Envoy configuration generated by Istio. See more details at: https://istio.io/docs/reference/config/networking/v1alpha3/envoy-filter.html",
              "properties": {
                "configPatches": {
                  "description": "One or more patches with match conditions.",
                  "items": {
                    "properties": {
                      "applyTo": {
                        "enum": [
                          "INVALID",
                          "LISTENER",
                          "FILTER_CHAIN",
                          "NETWORK_FILTER",
                          "HTTP_FILTER",
                          "ROUTE_CONFIGURATION",
                          "VIRTUAL_HOST",
                          "HTTP_ROUTE",
                          "CLUSTER"
                        ],
                        "type": "string"
                      },
                      "match": {
                        "description": "Match on listener/route configuration/cluster.",
                        "oneOf": [
                          {
                            "required": [
                              "listener"
                            ]
                          },
                          {
                            "required": [
                              "routeConfiguration"
                            ]
                          },
                          {
                            "required": [
                              "cluster"
                            ]
                          }
                        ],
                        "properties": {
                          "cluster": {
                            "description": "Match on envoy cluster attributes.",
                            "properties": {
                              "name": {
                                "description": "The exact name of the cluster to match.",
                                "format": "string",
                                "type": "string"
                              },
                              "portNumber": {
                                "description": "The service port for which this cluster was generated.",
                                "type": "integer"
                              },
                              "service": {
                                "description": "The fully qualified service name for this cluster.",
                                "format": "string",
                                "type": "string"
                              },
                              "subset": {
                                "description": "The subset associated with the service.",
                                "format": "string",
                                "type": "string"
                              }
                            },
                            "type": "object"
                          },
                          "context": {
                            "description": "The specific config generation context to match on.",
                            "enum": [
                              "ANY",
                              "SIDECAR_INBOUND",
                              "SIDECAR_OUTBOUND",
                              "GATEWAY"
                            ],
                            "type": "string"
                          },
                          "listener": {
                            "description": "Match on envoy listener attributes.",
                            "properties": {
                              "filterChain": {
                                "description": "Match a specific filter chain in a listener.",
                                "properties": {
                                  "applicationProtocols": {
                                    "description": "Applies only to sidecars.",
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "filter": {
                                    "description": "The name of a specific filter to apply the patch to.",
                                    "properties": {
                                      "name": {
                                        "description": "The filter name to match on.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "subFilter": {
                                        "properties": {
                                          "name": {
                                            "description": "The filter name to match on.",
                                            "format": "string",
                                            "type": "string"
                                          }
                                        },
                                        "type": "object"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "name": {
                                    "description": "The name assigned to the filter chain.",
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "sni": {
                                    "description": "The SNI value used by a filter chain's match condition.",
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "transportProtocol": {
                                    "description": "Applies only to SIDECAR_INBOUND context.",
                                    "format": "string",
                                    "type": "string"
                                  }
                                },
                                "type": "object"
                              },
                              "name": {
                                "description": "Match a specific listener by its name.",
                                "format": "string",
                                "type": "string"
                              },
                              "portName": {
                                "format": "string",
                                "type": "string"
                              },
                              "portNumber": {
                                "type": "integer"
                              }
                            },
                            "type": "object"
                          },
                          "proxy": {
                            "description": "Match on properties associated with a proxy.",
                            "properties": {
                              "metadata": {
                                "additionalProperties": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "object"
                              },
                              "proxyVersion": {
                                "format": "string",
                                "type": "string"
                              }
                            },
                            "type": "object"
                          },
                          "routeConfiguration": {
                            "description": "Match on envoy HTTP route configuration attributes.",
                            "properties": {
                              "gateway": {
                                "format": "string",
                                "type": "string"
                              },
                              "name": {
                                "description": "Route configuration name to match on.",
                                "format": "string",
                                "type": "string"
                              },
                              "portName": {
                                "description": "Applicable only for GATEWAY context.",
                                "format": "string",
                                "type": "string"
                              },
                              "portNumber": {
                                "type": "integer"
                              },
                              "vhost": {
                                "properties": {
                                  "name": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "route": {
                                    "description": "Match a specific route within the virtual host.",
                                    "properties": {
                                      "action": {
                                        "description": "Match a route with specific action type.",
                                        "enum": [
                                          "ANY",
                                          "ROUTE",
                                          "REDIRECT",
                                          "DIRECT_RESPONSE"
                                        ],
                                        "type": "string"
                                      },
                                      "name": {
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  }
                                },
                                "type": "object"
                              }
                            },
                            "type": "object"
                          }
                        },
                        "type": "object"
                      },
                      "patch": {
                        "description": "The patch to apply along with the operation.",
                        "properties": {
                          "operation": {
                            "description": "Determines how the patch should be applied.",
                            "enum": [
                              "INVALID",
                              "MERGE",
                              "ADD",
                              "REMOVE",
                              "INSERT_BEFORE",
                              "INSERT_AFTER"
                            ],
                            "type": "string"
                          },
                          "value": {
                            "description": "The JSON config of the object being patched.",
                            "type": "object"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "filters": {
                  "items": {
                    "properties": {
                      "filterConfig": {
                        "type": "object"
                      },
                      "filterName": {
                        "description": "The name of the filter to instantiate.",
                        "format": "string",
                        "type": "string"
                      },
                      "filterType": {
                        "description": "The type of filter to instantiate.",
                        "enum": [
                          "INVALID",
                          "HTTP",
                          "NETWORK"
                        ],
                        "type": "string"
                      },
                      "insertPosition": {
                        "description": "Insert position in the filter chain.",
                        "properties": {
                          "index": {
                            "description": "Position of this filter in the filter chain.",
                            "enum": [
                              "FIRST",
                              "LAST",
                              "BEFORE",
                              "AFTER"
                            ],
                            "type": "string"
                          },
                          "relativeTo": {
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "listenerMatch": {
                        "properties": {
                          "address": {
                            "description": "One or more IP addresses to which the listener is bound.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "listenerProtocol": {
                            "description": "Selects a class of listeners for the same protocol.",
                            "enum": [
                              "ALL",
                              "HTTP",
                              "TCP"
                            ],
                            "type": "string"
                          },
                          "listenerType": {
                            "description": "Inbound vs outbound sidecar listener or gateway listener.",
                            "enum": [
                              "ANY",
                              "SIDECAR_INBOUND",
                              "SIDECAR_OUTBOUND",
                              "GATEWAY"
                            ],
                            "type": "string"
                          },
                          "portNamePrefix": {
                            "format": "string",
                            "type": "string"
                          },
                          "portNumber": {
                            "type": "integer"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "workloadLabels": {
                  "additionalProperties": {
                    "format": "string",
                    "type": "string"
                  },
                  "description": "Deprecated.",
                  "type": "object"
                },
                "workloadSelector": {
                  "properties": {
                    "labels": {
                      "additionalProperties": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "object"
                    }
                  },
                  "type": "object"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha3",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-6": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "gateways.networking.istio.io"
    },
    "spec": {
      "group": "networking.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "networking-istio-io"
        ],
        "kind": "Gateway",
        "plural": "gateways",
        "shortNames": [
          "gw"
        ],
        "singular": "gateway"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration affecting edge load balancer. See more details at: https://istio.io/docs/reference/config/networking/v1alpha3/gateway.html",
              "properties": {
                "selector": {
                  "additionalProperties": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "object"
                },
                "servers": {
                  "description": "A list of server specifications.",
                  "items": {
                    "properties": {
                      "bind": {
                        "format": "string",
                        "type": "string"
                      },
                      "defaultEndpoint": {
                        "format": "string",
                        "type": "string"
                      },
                      "hosts": {
                        "description": "One or more hosts exposed by this gateway.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "port": {
                        "properties": {
                          "name": {
                            "description": "Label assigned to the port.",
                            "format": "string",
                            "type": "string"
                          },
                          "number": {
                            "description": "A valid non-negative integer port number.",
                            "type": "integer"
                          },
                          "protocol": {
                            "description": "The protocol exposed on the port.",
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "tls": {
                        "description": "Set of TLS related options that govern the server's behavior.",
                        "properties": {
                          "caCertificates": {
                            "description": "REQUIRED if mode is `MUTUAL`.",
                            "format": "string",
                            "type": "string"
                          },
                          "cipherSuites": {
                            "description": "Optional: If specified, only support the specified cipher list.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "credentialName": {
                            "format": "string",
                            "type": "string"
                          },
                          "httpsRedirect": {
                            "type": "boolean"
                          },
                          "maxProtocolVersion": {
                            "description": "Optional: Maximum TLS protocol version.",
                            "enum": [
                              "TLS_AUTO",
                              "TLSV1_0",
                              "TLSV1_1",
                              "TLSV1_2",
                              "TLSV1_3"
                            ],
                            "type": "string"
                          },
                          "minProtocolVersion": {
                            "description": "Optional: Minimum TLS protocol version.",
                            "enum": [
                              "TLS_AUTO",
                              "TLSV1_0",
                              "TLSV1_1",
                              "TLSV1_2",
                              "TLSV1_3"
                            ],
                            "type": "string"
                          },
                          "mode": {
                            "enum": [
                              "PASSTHROUGH",
                              "SIMPLE",
                              "MUTUAL",
                              "AUTO_PASSTHROUGH",
                              "ISTIO_MUTUAL"
                            ],
                            "type": "string"
                          },
                          "privateKey": {
                            "description": "REQUIRED if mode is `SIMPLE` or `MUTUAL`.",
                            "format": "string",
                            "type": "string"
                          },
                          "serverCertificate": {
                            "description": "REQUIRED if mode is `SIMPLE` or `MUTUAL`.",
                            "format": "string",
                            "type": "string"
                          },
                          "subjectAltNames": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "verifyCertificateHash": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "verifyCertificateSpki": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha3",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-7": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "httpapispecbindings.config.istio.io"
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "apim-istio-io"
        ],
        "kind": "HTTPAPISpecBinding",
        "plural": "httpapispecbindings",
        "singular": "httpapispecbinding"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "properties": {
                "api_specs": {
                  "items": {
                    "properties": {
                      "name": {
                        "description": "The short name of the HTTPAPISpec.",
                        "format": "string",
                        "type": "string"
                      },
                      "namespace": {
                        "description": "Optional namespace of the HTTPAPISpec.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "apiSpecs": {
                  "items": {
                    "properties": {
                      "name": {
                        "description": "The short name of the HTTPAPISpec.",
                        "format": "string",
                        "type": "string"
                      },
                      "namespace": {
                        "description": "Optional namespace of the HTTPAPISpec.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "services": {
                  "description": "One or more services to map the listed HTTPAPISpec onto.",
                  "items": {
                    "properties": {
                      "domain": {
                        "description": "Domain suffix used to construct the service FQDN in implementations that support such specification.",
                        "format": "string",
                        "type": "string"
                      },
                      "labels": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "description": "Optional one or more labels that uniquely identify the service version.",
                        "type": "object"
                      },
                      "name": {
                        "description": "The short name of the service such as \"foo\".",
                        "format": "string",
                        "type": "string"
                      },
                      "namespace": {
                        "description": "Optional namespace of the service.",
                        "format": "string",
                        "type": "string"
                      },
                      "service": {
                        "description": "The service FQDN.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-8": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "httpapispecs.config.istio.io"
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "apim-istio-io"
        ],
        "kind": "HTTPAPISpec",
        "plural": "httpapispecs",
        "singular": "httpapispec"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "properties": {
                "api_keys": {
                  "items": {
                    "oneOf": [
                      {
                        "required": [
                          "query"
                        ]
                      },
                      {
                        "required": [
                          "header"
                        ]
                      },
                      {
                        "required": [
                          "cookie"
                        ]
                      }
                    ],
                    "properties": {
                      "cookie": {
                        "format": "string",
                        "type": "string"
                      },
                      "header": {
                        "description": "API key is sent in a request header.",
                        "format": "string",
                        "type": "string"
                      },
                      "query": {
                        "description": "API Key is sent as a query parameter.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "apiKeys": {
                  "items": {
                    "oneOf": [
                      {
                        "required": [
                          "query"
                        ]
                      },
                      {
                        "required": [
                          "header"
                        ]
                      },
                      {
                        "required": [
                          "cookie"
                        ]
                      }
                    ],
                    "properties": {
                      "cookie": {
                        "format": "string",
                        "type": "string"
                      },
                      "header": {
                        "description": "API key is sent in a request header.",
                        "format": "string",
                        "type": "string"
                      },
                      "query": {
                        "description": "API Key is sent as a query parameter.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "attributes": {
                  "properties": {
                    "attributes": {
                      "additionalProperties": {
                        "oneOf": [
                          {
                            "required": [
                              "stringValue"
                            ]
                          },
                          {
                            "required": [
                              "int64Value"
                            ]
                          },
                          {
                            "required": [
                              "doubleValue"
                            ]
                          },
                          {
                            "required": [
                              "boolValue"
                            ]
                          },
                          {
                            "required": [
                              "bytesValue"
                            ]
                          },
                          {
                            "required": [
                              "timestampValue"
                            ]
                          },
                          {
                            "required": [
                              "durationValue"
                            ]
                          },
                          {
                            "required": [
                              "stringMapValue"
                            ]
                          }
                        ],
                        "properties": {
                          "boolValue": {
                            "type": "boolean"
                          },
                          "bytesValue": {
                            "format": "binary",
                            "type": "string"
                          },
                          "doubleValue": {
                            "format": "double",
                            "type": "number"
                          },
                          "durationValue": {
                            "type": "string"
                          },
                          "int64Value": {
                            "format": "int64",
                            "type": "integer"
                          },
                          "stringMapValue": {
                            "properties": {
                              "entries": {
                                "additionalProperties": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "description": "Holds a set of name/value pairs.",
                                "type": "object"
                              }
                            },
                            "type": "object"
                          },
                          "stringValue": {
                            "format": "string",
                            "type": "string"
                          },
                          "timestampValue": {
                            "format": "dateTime",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "description": "A map of attribute name to its value.",
                      "type": "object"
                    }
                  },
                  "type": "object"
                },
                "patterns": {
                  "description": "List of HTTP patterns to match.",
                  "items": {
                    "oneOf": [
                      {
                        "required": [
                          "uriTemplate"
                        ]
                      },
                      {
                        "required": [
                          "regex"
                        ]
                      }
                    ],
                    "properties": {
                      "attributes": {
                        "properties": {
                          "attributes": {
                            "additionalProperties": {
                              "oneOf": [
                                {
                                  "required": [
                                    "stringValue"
                                  ]
                                },
                                {
                                  "required": [
                                    "int64Value"
                                  ]
                                },
                                {
                                  "required": [
                                    "doubleValue"
                                  ]
                                },
                                {
                                  "required": [
                                    "boolValue"
                                  ]
                                },
                                {
                                  "required": [
                                    "bytesValue"
                                  ]
                                },
                                {
                                  "required": [
                                    "timestampValue"
                                  ]
                                },
                                {
                                  "required": [
                                    "durationValue"
                                  ]
                                },
                                {
                                  "required": [
                                    "stringMapValue"
                                  ]
                                }
                              ],
                              "properties": {
                                "boolValue": {
                                  "type": "boolean"
                                },
                                "bytesValue": {
                                  "format": "binary",
                                  "type": "string"
                                },
                                "doubleValue": {
                                  "format": "double",
                                  "type": "number"
                                },
                                "durationValue": {
                                  "type": "string"
                                },
                                "int64Value": {
                                  "format": "int64",
                                  "type": "integer"
                                },
                                "stringMapValue": {
                                  "properties": {
                                    "entries": {
                                      "additionalProperties": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "description": "Holds a set of name/value pairs.",
                                      "type": "object"
                                    }
                                  },
                                  "type": "object"
                                },
                                "stringValue": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "timestampValue": {
                                  "format": "dateTime",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "description": "A map of attribute name to its value.",
                            "type": "object"
                          }
                        },
                        "type": "object"
                      },
                      "httpMethod": {
                        "format": "string",
                        "type": "string"
                      },
                      "regex": {
                        "format": "string",
                        "type": "string"
                      },
                      "uriTemplate": {
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-9": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-citadel",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "meshpolicies.authentication.istio.io"
    },
    "spec": {
      "group": "authentication.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "authentication-istio-io"
        ],
        "kind": "MeshPolicy",
        "listKind": "MeshPolicyList",
        "plural": "meshpolicies",
        "singular": "meshpolicy"
      },
      "scope": "Cluster",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Authentication policy for Istio services. See more details at: https://istio.io/docs/reference/config/istio.authentication.v1alpha1.html",
              "properties": {
                "originIsOptional": {
                  "type": "boolean"
                },
                "origins": {
                  "description": "List of authentication methods that can be used for origin authentication.",
                  "items": {
                    "properties": {
                      "jwt": {
                        "description": "Jwt params for the method.",
                        "properties": {
                          "audiences": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "issuer": {
                            "description": "Identifies the issuer that issued the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks": {
                            "description": "JSON Web Key Set of public keys to validate signature of the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks_uri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwksUri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwt_headers": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtHeaders": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtParams": {
                            "description": "JWT is sent in a query parameter.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "trigger_rules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          },
                          "triggerRules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "peerIsOptional": {
                  "type": "boolean"
                },
                "peers": {
                  "description": "List of authentication methods that can be used for peer authentication.",
                  "items": {
                    "oneOf": [
                      {
                        "required": [
                          "mtls"
                        ]
                      },
                      {
                        "required": [
                          "jwt"
                        ]
                      }
                    ],
                    "properties": {
                      "jwt": {
                        "properties": {
                          "audiences": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "issuer": {
                            "description": "Identifies the issuer that issued the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks": {
                            "description": "JSON Web Key Set of public keys to validate signature of the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks_uri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwksUri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwt_headers": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtHeaders": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtParams": {
                            "description": "JWT is sent in a query parameter.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "trigger_rules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          },
                          "triggerRules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          }
                        },
                        "type": "object"
                      },
                      "mtls": {
                        "description": "Set if mTLS is used.",
                        "properties": {
                          "allowTls": {
                            "description": "WILL BE DEPRECATED, if set, will translates to `TLS_PERMISSIVE` mode.",
                            "type": "boolean"
                          },
                          "mode": {
                            "description": "Defines the mode of mTLS authentication.",
                            "enum": [
                              "STRICT",
                              "PERMISSIVE"
                            ],
                            "type": "string"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "principalBinding": {
                  "description": "Define whether peer or origin identity should be use for principal.",
                  "enum": [
                    "USE_PEER",
                    "USE_ORIGIN"
                  ],
                  "type": "string"
                },
                "targets": {
                  "description": "List rules to select workloads that the policy should be applied on.",
                  "items": {
                    "properties": {
                      "labels": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "object"
                      },
                      "name": {
                        "description": "The name must be a short name from the service registry.",
                        "format": "string",
                        "type": "string"
                      },
                      "ports": {
                        "description": "Specifies the ports.",
                        "items": {
                          "oneOf": [
                            {
                              "required": [
                                "number"
                              ]
                            },
                            {
                              "required": [
                                "name"
                              ]
                            }
                          ],
                          "properties": {
                            "name": {
                              "format": "string",
                              "type": "string"
                            },
                            "number": {
                              "type": "integer"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha1",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-10": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-citadel",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "policies.authentication.istio.io"
    },
    "spec": {
      "group": "authentication.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "authentication-istio-io"
        ],
        "kind": "Policy",
        "plural": "policies",
        "singular": "policy"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Authentication policy for Istio services. See more details at: https://istio.io/docs/reference/config/istio.authentication.v1alpha1.html",
              "properties": {
                "originIsOptional": {
                  "type": "boolean"
                },
                "origins": {
                  "description": "List of authentication methods that can be used for origin authentication.",
                  "items": {
                    "properties": {
                      "jwt": {
                        "description": "Jwt params for the method.",
                        "properties": {
                          "audiences": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "issuer": {
                            "description": "Identifies the issuer that issued the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks": {
                            "description": "JSON Web Key Set of public keys to validate signature of the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks_uri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwksUri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwt_headers": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtHeaders": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtParams": {
                            "description": "JWT is sent in a query parameter.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "trigger_rules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          },
                          "triggerRules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "peerIsOptional": {
                  "type": "boolean"
                },
                "peers": {
                  "description": "List of authentication methods that can be used for peer authentication.",
                  "items": {
                    "oneOf": [
                      {
                        "required": [
                          "mtls"
                        ]
                      },
                      {
                        "required": [
                          "jwt"
                        ]
                      }
                    ],
                    "properties": {
                      "jwt": {
                        "properties": {
                          "audiences": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "issuer": {
                            "description": "Identifies the issuer that issued the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks": {
                            "description": "JSON Web Key Set of public keys to validate signature of the JWT.",
                            "format": "string",
                            "type": "string"
                          },
                          "jwks_uri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwksUri": {
                            "format": "string",
                            "type": "string"
                          },
                          "jwt_headers": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtHeaders": {
                            "description": "JWT is sent in a request header.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "jwtParams": {
                            "description": "JWT is sent in a query parameter.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "trigger_rules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          },
                          "triggerRules": {
                            "items": {
                              "properties": {
                                "excluded_paths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "excludedPaths": {
                                  "description": "List of paths to be excluded from the request.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "included_paths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                },
                                "includedPaths": {
                                  "description": "List of paths that the request must include.",
                                  "items": {
                                    "oneOf": [
                                      {
                                        "required": [
                                          "exact"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "prefix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "suffix"
                                        ]
                                      },
                                      {
                                        "required": [
                                          "regex"
                                        ]
                                      }
                                    ],
                                    "properties": {
                                      "exact": {
                                        "description": "exact string match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "prefix": {
                                        "description": "prefix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "regex": {
                                        "description": "ECMAscript style regex-based match as defined by [EDCA-262](http://en.cppreference.com/w/cpp/regex/ecmascript).",
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "suffix": {
                                        "description": "suffix-based match.",
                                        "format": "string",
                                        "type": "string"
                                      }
                                    },
                                    "type": "object"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            },
                            "type": "array"
                          }
                        },
                        "type": "object"
                      },
                      "mtls": {
                        "description": "Set if mTLS is used.",
                        "properties": {
                          "allowTls": {
                            "description": "WILL BE DEPRECATED, if set, will translates to `TLS_PERMISSIVE` mode.",
                            "type": "boolean"
                          },
                          "mode": {
                            "description": "Defines the mode of mTLS authentication.",
                            "enum": [
                              "STRICT",
                              "PERMISSIVE"
                            ],
                            "type": "string"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "principalBinding": {
                  "description": "Define whether peer or origin identity should be use for principal.",
                  "enum": [
                    "USE_PEER",
                    "USE_ORIGIN"
                  ],
                  "type": "string"
                },
                "targets": {
                  "description": "List rules to select workloads that the policy should be applied on.",
                  "items": {
                    "properties": {
                      "labels": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "object"
                      },
                      "name": {
                        "description": "The name must be a short name from the service registry.",
                        "format": "string",
                        "type": "string"
                      },
                      "ports": {
                        "description": "Specifies the ports.",
                        "items": {
                          "oneOf": [
                            {
                              "required": [
                                "number"
                              ]
                            },
                            {
                              "required": [
                                "name"
                              ]
                            }
                          ],
                          "properties": {
                            "name": {
                              "format": "string",
                              "type": "string"
                            },
                            "number": {
                              "type": "integer"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha1",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-11": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "quotaspecbindings.config.istio.io"
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "apim-istio-io"
        ],
        "kind": "QuotaSpecBinding",
        "plural": "quotaspecbindings",
        "singular": "quotaspecbinding"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "properties": {
                "quotaSpecs": {
                  "items": {
                    "properties": {
                      "name": {
                        "description": "The short name of the QuotaSpec.",
                        "format": "string",
                        "type": "string"
                      },
                      "namespace": {
                        "description": "Optional namespace of the QuotaSpec.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "services": {
                  "description": "One or more services to map the listed QuotaSpec onto.",
                  "items": {
                    "properties": {
                      "domain": {
                        "description": "Domain suffix used to construct the service FQDN in implementations that support such specification.",
                        "format": "string",
                        "type": "string"
                      },
                      "labels": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "description": "Optional one or more labels that uniquely identify the service version.",
                        "type": "object"
                      },
                      "name": {
                        "description": "The short name of the service such as \"foo\".",
                        "format": "string",
                        "type": "string"
                      },
                      "namespace": {
                        "description": "Optional namespace of the service.",
                        "format": "string",
                        "type": "string"
                      },
                      "service": {
                        "description": "The service FQDN.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-12": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "quotaspecs.config.istio.io"
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "apim-istio-io"
        ],
        "kind": "QuotaSpec",
        "plural": "quotaspecs",
        "singular": "quotaspec"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Determines the quotas used for individual requests.",
              "properties": {
                "rules": {
                  "description": "A list of Quota rules.",
                  "items": {
                    "properties": {
                      "match": {
                        "description": "If empty, match all request.",
                        "items": {
                          "properties": {
                            "clause": {
                              "additionalProperties": {
                                "oneOf": [
                                  {
                                    "required": [
                                      "exact"
                                    ]
                                  },
                                  {
                                    "required": [
                                      "prefix"
                                    ]
                                  },
                                  {
                                    "required": [
                                      "regex"
                                    ]
                                  }
                                ],
                                "properties": {
                                  "exact": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "prefix": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "regex": {
                                    "format": "string",
                                    "type": "string"
                                  }
                                },
                                "type": "object"
                              },
                              "description": "Map of attribute names to StringMatch type.",
                              "type": "object"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "quotas": {
                        "description": "The list of quotas to charge.",
                        "items": {
                          "properties": {
                            "charge": {
                              "format": "int32",
                              "type": "integer"
                            },
                            "quota": {
                              "format": "string",
                              "type": "string"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-13": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "istio": "rbac",
        "package": "istio.io.mixer",
        "release": "istio"
      },
      "name": "rbacconfigs.rbac.istio.io"
    },
    "spec": {
      "group": "rbac.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "rbac-istio-io"
        ],
        "kind": "RbacConfig",
        "plural": "rbacconfigs",
        "singular": "rbacconfig"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration for Role Based Access Control. See more details at: https://istio.io/docs/reference/config/authorization/istio.rbac.v1alpha1.html",
              "properties": {
                "enforcementMode": {
                  "enum": [
                    "ENFORCED",
                    "PERMISSIVE"
                  ],
                  "type": "string"
                },
                "exclusion": {
                  "description": "A list of services or namespaces that should not be enforced by Istio RBAC policies.",
                  "properties": {
                    "namespaces": {
                      "description": "A list of namespaces.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    },
                    "services": {
                      "description": "A list of services.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    }
                  },
                  "type": "object"
                },
                "inclusion": {
                  "description": "A list of services or namespaces that should be enforced by Istio RBAC policies.",
                  "properties": {
                    "namespaces": {
                      "description": "A list of namespaces.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    },
                    "services": {
                      "description": "A list of services.",
                      "items": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "array"
                    }
                  },
                  "type": "object"
                },
                "mode": {
                  "description": "Istio RBAC mode.",
                  "enum": [
                    "OFF",
                    "ON",
                    "ON_WITH_INCLUSION",
                    "ON_WITH_EXCLUSION"
                  ],
                  "type": "string"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha1",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-14": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "istio": "core",
        "package": "istio.io.mixer",
        "release": "istio"
      },
      "name": "rules.config.istio.io"
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "policy-istio-io"
        ],
        "kind": "rule",
        "plural": "rules",
        "singular": "rule"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Describes the rules used to configure Mixer's policy and telemetry features. See more details at: https://istio.io/docs/reference/config/policy-and-telemetry/istio.policy.v1beta1.html",
              "properties": {
                "actions": {
                  "description": "The actions that will be executed when match evaluates to `true`.",
                  "items": {
                    "properties": {
                      "handler": {
                        "description": "Fully qualified name of the handler to invoke.",
                        "format": "string",
                        "type": "string"
                      },
                      "instances": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "name": {
                        "description": "A handle to refer to the results of the action.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "match": {
                  "description": "Match is an attribute based predicate.",
                  "format": "string",
                  "type": "string"
                },
                "requestHeaderOperations": {
                  "items": {
                    "properties": {
                      "name": {
                        "description": "Header name literal value.",
                        "format": "string",
                        "type": "string"
                      },
                      "operation": {
                        "description": "Header operation type.",
                        "enum": [
                          "REPLACE",
                          "REMOVE",
                          "APPEND"
                        ],
                        "type": "string"
                      },
                      "values": {
                        "description": "Header value expressions.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "responseHeaderOperations": {
                  "items": {
                    "properties": {
                      "name": {
                        "description": "Header name literal value.",
                        "format": "string",
                        "type": "string"
                      },
                      "operation": {
                        "description": "Header operation type.",
                        "enum": [
                          "REPLACE",
                          "REMOVE",
                          "APPEND"
                        ],
                        "type": "string"
                      },
                      "values": {
                        "description": "Header value expressions.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "sampling": {
                  "properties": {
                    "random": {
                      "description": "Provides filtering of actions based on random selection per request.",
                      "properties": {
                        "attributeExpression": {
                          "description": "Specifies an attribute expression to use to override the numerator in the `percent_sampled` field.",
                          "format": "string",
                          "type": "string"
                        },
                        "percentSampled": {
                          "description": "The default sampling rate, expressed as a percentage.",
                          "properties": {
                            "denominator": {
                              "description": "Specifies the denominator.",
                              "enum": [
                                "HUNDRED",
                                "TEN_THOUSAND"
                              ],
                              "type": "string"
                            },
                            "numerator": {
                              "description": "Specifies the numerator.",
                              "type": "integer"
                            }
                          },
                          "type": "object"
                        },
                        "useIndependentRandomness": {
                          "description": "By default sampling will be based on the value of the request header `x-request-id`.",
                          "type": "boolean"
                        }
                      },
                      "type": "object"
                    },
                    "rateLimit": {
                      "properties": {
                        "maxUnsampledEntries": {
                          "description": "Number of entries to allow during the `sampling_duration` before sampling is enforced.",
                          "format": "int64",
                          "type": "integer"
                        },
                        "samplingDuration": {
                          "description": "Window in which to enforce the sampling rate.",
                          "type": "string"
                        },
                        "samplingRate": {
                          "description": "The rate at which to sample entries once the unsampled limit has been reached.",
                          "format": "int64",
                          "type": "integer"
                        }
                      },
                      "type": "object"
                    }
                  },
                  "type": "object"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-15": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "serviceentries.networking.istio.io"
    },
    "spec": {
      "additionalPrinterColumns": [
        {
          "JSONPath": ".spec.hosts",
          "description": "The hosts associated with the ServiceEntry",
          "name": "Hosts",
          "type": "string"
        },
        {
          "JSONPath": ".spec.location",
          "description": "Whether the service is external to the mesh or part of the mesh (MESH_EXTERNAL or MESH_INTERNAL)",
          "name": "Location",
          "type": "string"
        },
        {
          "JSONPath": ".spec.resolution",
          "description": "Service discovery mode for the hosts (NONE, STATIC, or DNS)",
          "name": "Resolution",
          "type": "string"
        },
        {
          "JSONPath": ".metadata.creationTimestamp",
          "description": "CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\nPopulated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata",
          "name": "Age",
          "type": "date"
        }
      ],
      "group": "networking.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "networking-istio-io"
        ],
        "kind": "ServiceEntry",
        "listKind": "ServiceEntryList",
        "plural": "serviceentries",
        "shortNames": [
          "se"
        ],
        "singular": "serviceentry"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration affecting service registry. See more details at: https://istio.io/docs/reference/config/networking/v1alpha3/service-entry.html",
              "properties": {
                "addresses": {
                  "description": "The virtual IP addresses associated with the service.",
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                },
                "endpoints": {
                  "description": "One or more endpoints associated with the service.",
                  "items": {
                    "properties": {
                      "address": {
                        "format": "string",
                        "type": "string"
                      },
                      "labels": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "description": "One or more labels associated with the endpoint.",
                        "type": "object"
                      },
                      "locality": {
                        "description": "The locality associated with the endpoint.",
                        "format": "string",
                        "type": "string"
                      },
                      "network": {
                        "format": "string",
                        "type": "string"
                      },
                      "ports": {
                        "additionalProperties": {
                          "type": "integer"
                        },
                        "description": "Set of ports associated with the endpoint.",
                        "type": "object"
                      },
                      "weight": {
                        "description": "The load balancing weight associated with the endpoint.",
                        "type": "integer"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "exportTo": {
                  "description": "A list of namespaces to which this service is exported.",
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                },
                "hosts": {
                  "description": "The hosts associated with the ServiceEntry.",
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                },
                "location": {
                  "enum": [
                    "MESH_EXTERNAL",
                    "MESH_INTERNAL"
                  ],
                  "type": "string"
                },
                "ports": {
                  "description": "The ports associated with the external service.",
                  "items": {
                    "properties": {
                      "name": {
                        "description": "Label assigned to the port.",
                        "format": "string",
                        "type": "string"
                      },
                      "number": {
                        "description": "A valid non-negative integer port number.",
                        "type": "integer"
                      },
                      "protocol": {
                        "description": "The protocol exposed on the port.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "resolution": {
                  "description": "Service discovery mode for the hosts.",
                  "enum": [
                    "NONE",
                    "STATIC",
                    "DNS"
                  ],
                  "type": "string"
                },
                "subjectAltNames": {
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha3",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-16": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "istio": "rbac",
        "package": "istio.io.mixer",
        "release": "istio"
      },
      "name": "servicerolebindings.rbac.istio.io"
    },
    "spec": {
      "additionalPrinterColumns": [
        {
          "JSONPath": ".spec.roleRef.name",
          "description": "The name of the ServiceRole object being referenced",
          "name": "Reference",
          "type": "string"
        },
        {
          "JSONPath": ".metadata.creationTimestamp",
          "description": "CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\nPopulated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata",
          "name": "Age",
          "type": "date"
        }
      ],
      "group": "rbac.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "rbac-istio-io"
        ],
        "kind": "ServiceRoleBinding",
        "plural": "servicerolebindings",
        "singular": "servicerolebinding"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration for Role Based Access Control. See more details at: https://istio.io/docs/reference/config/authorization/istio.rbac.v1alpha1.html",
              "properties": {
                "actions": {
                  "items": {
                    "properties": {
                      "constraints": {
                        "description": "Optional.",
                        "items": {
                          "properties": {
                            "key": {
                              "description": "Key of the constraint.",
                              "format": "string",
                              "type": "string"
                            },
                            "values": {
                              "description": "List of valid values for the constraint.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "hosts": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "methods": {
                        "description": "Optional.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notHosts": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notMethods": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notPaths": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notPorts": {
                        "items": {
                          "format": "int32",
                          "type": "integer"
                        },
                        "type": "array"
                      },
                      "paths": {
                        "description": "Optional.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "ports": {
                        "items": {
                          "format": "int32",
                          "type": "integer"
                        },
                        "type": "array"
                      },
                      "services": {
                        "description": "A list of service names.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "mode": {
                  "enum": [
                    "ENFORCED",
                    "PERMISSIVE"
                  ],
                  "type": "string"
                },
                "role": {
                  "format": "string",
                  "type": "string"
                },
                "roleRef": {
                  "description": "Reference to the ServiceRole object.",
                  "properties": {
                    "kind": {
                      "description": "The type of the role being referenced.",
                      "format": "string",
                      "type": "string"
                    },
                    "name": {
                      "description": "The name of the ServiceRole object being referenced.",
                      "format": "string",
                      "type": "string"
                    }
                  },
                  "type": "object"
                },
                "subjects": {
                  "description": "List of subjects that are assigned the ServiceRole object.",
                  "items": {
                    "properties": {
                      "group": {
                        "format": "string",
                        "type": "string"
                      },
                      "groups": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "ips": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "names": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "namespaces": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notGroups": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notIps": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notNames": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notNamespaces": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "properties": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "description": "Optional.",
                        "type": "object"
                      },
                      "user": {
                        "description": "Optional.",
                        "format": "string",
                        "type": "string"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha1",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-17": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "mixer",
        "chart": "istio",
        "heritage": "Tiller",
        "istio": "rbac",
        "package": "istio.io.mixer",
        "release": "istio"
      },
      "name": "serviceroles.rbac.istio.io"
    },
    "spec": {
      "group": "rbac.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "rbac-istio-io"
        ],
        "kind": "ServiceRole",
        "plural": "serviceroles",
        "singular": "servicerole"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration for Role Based Access Control. See more details at: https://istio.io/docs/reference/config/authorization/istio.rbac.v1alpha1.html",
              "properties": {
                "rules": {
                  "description": "The set of access rules (permissions) that the role has.",
                  "items": {
                    "properties": {
                      "constraints": {
                        "description": "Optional.",
                        "items": {
                          "properties": {
                            "key": {
                              "description": "Key of the constraint.",
                              "format": "string",
                              "type": "string"
                            },
                            "values": {
                              "description": "List of valid values for the constraint.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "hosts": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "methods": {
                        "description": "Optional.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notHosts": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notMethods": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notPaths": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "notPorts": {
                        "items": {
                          "format": "int32",
                          "type": "integer"
                        },
                        "type": "array"
                      },
                      "paths": {
                        "description": "Optional.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "ports": {
                        "items": {
                          "format": "int32",
                          "type": "integer"
                        },
                        "type": "array"
                      },
                      "services": {
                        "description": "A list of service names.",
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha1",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-18": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "virtualservices.networking.istio.io"
    },
    "spec": {
      "additionalPrinterColumns": [
        {
          "JSONPath": ".spec.gateways",
          "description": "The names of gateways and sidecars that should apply these routes",
          "name": "Gateways",
          "type": "string"
        },
        {
          "JSONPath": ".spec.hosts",
          "description": "The destination hosts to which traffic is being sent",
          "name": "Hosts",
          "type": "string"
        },
        {
          "JSONPath": ".metadata.creationTimestamp",
          "description": "CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.\nPopulated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata",
          "name": "Age",
          "type": "date"
        }
      ],
      "group": "networking.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "networking-istio-io"
        ],
        "kind": "VirtualService",
        "listKind": "VirtualServiceList",
        "plural": "virtualservices",
        "shortNames": [
          "vs"
        ],
        "singular": "virtualservice"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration affecting label/content routing, sni routing, etc. See more details at: https://istio.io/docs/reference/config/networking/v1alpha3/virtual-service.html",
              "properties": {
                "exportTo": {
                  "description": "A list of namespaces to which this virtual service is exported.",
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                },
                "gateways": {
                  "description": "The names of gateways and sidecars that should apply these routes.",
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                },
                "hosts": {
                  "description": "The destination hosts to which traffic is being sent.",
                  "items": {
                    "format": "string",
                    "type": "string"
                  },
                  "type": "array"
                },
                "http": {
                  "description": "An ordered list of route rules for HTTP traffic.",
                  "items": {
                    "properties": {
                      "appendHeaders": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "object"
                      },
                      "appendRequestHeaders": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "object"
                      },
                      "appendResponseHeaders": {
                        "additionalProperties": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "object"
                      },
                      "corsPolicy": {
                        "description": "Cross-Origin Resource Sharing policy (CORS).",
                        "properties": {
                          "allowCredentials": {
                            "nullable": true,
                            "type": "boolean"
                          },
                          "allowHeaders": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "allowMethods": {
                            "description": "List of HTTP methods allowed to access the resource.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "allowOrigin": {
                            "description": "The list of origins that are allowed to perform CORS requests.",
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "exposeHeaders": {
                            "items": {
                              "format": "string",
                              "type": "string"
                            },
                            "type": "array"
                          },
                          "maxAge": {
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "fault": {
                        "description": "Fault injection policy to apply on HTTP traffic at the client side.",
                        "properties": {
                          "abort": {
                            "oneOf": [
                              {
                                "properties": {
                                  "percent": {}
                                },
                                "required": [
                                  "httpStatus"
                                ]
                              },
                              {
                                "properties": {
                                  "percent": {}
                                },
                                "required": [
                                  "grpcStatus"
                                ]
                              },
                              {
                                "properties": {
                                  "percent": {}
                                },
                                "required": [
                                  "http2Error"
                                ]
                              }
                            ],
                            "properties": {
                              "grpcStatus": {
                                "format": "string",
                                "type": "string"
                              },
                              "http2Error": {
                                "format": "string",
                                "type": "string"
                              },
                              "httpStatus": {
                                "description": "HTTP status code to use to abort the Http request.",
                                "format": "int32",
                                "type": "integer"
                              },
                              "percent": {
                                "description": "Percentage of requests to be aborted with the error code provided (0-100).",
                                "format": "int32",
                                "type": "integer"
                              },
                              "percentage": {
                                "description": "Percentage of requests to be aborted with the error code provided.",
                                "properties": {
                                  "value": {
                                    "format": "double",
                                    "type": "number"
                                  }
                                },
                                "type": "object"
                              }
                            },
                            "type": "object"
                          },
                          "delay": {
                            "oneOf": [
                              {
                                "properties": {
                                  "percent": {}
                                },
                                "required": [
                                  "fixedDelay"
                                ]
                              },
                              {
                                "properties": {
                                  "percent": {}
                                },
                                "required": [
                                  "exponentialDelay"
                                ]
                              }
                            ],
                            "properties": {
                              "exponentialDelay": {
                                "type": "string"
                              },
                              "fixedDelay": {
                                "description": "Add a fixed delay before forwarding the request.",
                                "type": "string"
                              },
                              "percent": {
                                "description": "Percentage of requests on which the delay will be injected (0-100).",
                                "format": "int32",
                                "type": "integer"
                              },
                              "percentage": {
                                "description": "Percentage of requests on which the delay will be injected.",
                                "properties": {
                                  "value": {
                                    "format": "double",
                                    "type": "number"
                                  }
                                },
                                "type": "object"
                              }
                            },
                            "type": "object"
                          }
                        },
                        "type": "object"
                      },
                      "headers": {
                        "properties": {
                          "request": {
                            "properties": {
                              "add": {
                                "additionalProperties": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "object"
                              },
                              "remove": {
                                "items": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "array"
                              },
                              "set": {
                                "additionalProperties": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "object"
                              }
                            },
                            "type": "object"
                          },
                          "response": {
                            "properties": {
                              "add": {
                                "additionalProperties": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "object"
                              },
                              "remove": {
                                "items": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "array"
                              },
                              "set": {
                                "additionalProperties": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "type": "object"
                              }
                            },
                            "type": "object"
                          }
                        },
                        "type": "object"
                      },
                      "match": {
                        "items": {
                          "properties": {
                            "authority": {
                              "oneOf": [
                                {
                                  "required": [
                                    "exact"
                                  ]
                                },
                                {
                                  "required": [
                                    "prefix"
                                  ]
                                },
                                {
                                  "required": [
                                    "regex"
                                  ]
                                }
                              ],
                              "properties": {
                                "exact": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "prefix": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "regex": {
                                  "format": "string",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "gateways": {
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "headers": {
                              "additionalProperties": {
                                "oneOf": [
                                  {
                                    "required": [
                                      "exact"
                                    ]
                                  },
                                  {
                                    "required": [
                                      "prefix"
                                    ]
                                  },
                                  {
                                    "required": [
                                      "regex"
                                    ]
                                  }
                                ],
                                "properties": {
                                  "exact": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "prefix": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "regex": {
                                    "format": "string",
                                    "type": "string"
                                  }
                                },
                                "type": "object"
                              },
                              "type": "object"
                            },
                            "ignoreUriCase": {
                              "description": "Flag to specify whether the URI matching should be case-insensitive.",
                              "type": "boolean"
                            },
                            "method": {
                              "oneOf": [
                                {
                                  "required": [
                                    "exact"
                                  ]
                                },
                                {
                                  "required": [
                                    "prefix"
                                  ]
                                },
                                {
                                  "required": [
                                    "regex"
                                  ]
                                }
                              ],
                              "properties": {
                                "exact": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "prefix": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "regex": {
                                  "format": "string",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "name": {
                              "description": "The name assigned to a match.",
                              "format": "string",
                              "type": "string"
                            },
                            "port": {
                              "description": "Specifies the ports on the host that is being addressed.",
                              "type": "integer"
                            },
                            "queryParams": {
                              "additionalProperties": {
                                "oneOf": [
                                  {
                                    "required": [
                                      "exact"
                                    ]
                                  },
                                  {
                                    "required": [
                                      "prefix"
                                    ]
                                  },
                                  {
                                    "required": [
                                      "regex"
                                    ]
                                  }
                                ],
                                "properties": {
                                  "exact": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "prefix": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "regex": {
                                    "format": "string",
                                    "type": "string"
                                  }
                                },
                                "type": "object"
                              },
                              "description": "Query parameters for matching.",
                              "type": "object"
                            },
                            "scheme": {
                              "oneOf": [
                                {
                                  "required": [
                                    "exact"
                                  ]
                                },
                                {
                                  "required": [
                                    "prefix"
                                  ]
                                },
                                {
                                  "required": [
                                    "regex"
                                  ]
                                }
                              ],
                              "properties": {
                                "exact": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "prefix": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "regex": {
                                  "format": "string",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "sourceLabels": {
                              "additionalProperties": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "object"
                            },
                            "uri": {
                              "oneOf": [
                                {
                                  "required": [
                                    "exact"
                                  ]
                                },
                                {
                                  "required": [
                                    "prefix"
                                  ]
                                },
                                {
                                  "required": [
                                    "regex"
                                  ]
                                }
                              ],
                              "properties": {
                                "exact": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "prefix": {
                                  "format": "string",
                                  "type": "string"
                                },
                                "regex": {
                                  "format": "string",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "mirror": {
                        "properties": {
                          "host": {
                            "description": "The name of a service from the service registry.",
                            "format": "string",
                            "type": "string"
                          },
                          "port": {
                            "description": "Specifies the port on the host that is being addressed.",
                            "properties": {
                              "number": {
                                "type": "integer"
                              }
                            },
                            "type": "object"
                          },
                          "subset": {
                            "description": "The name of a subset within the service.",
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "mirror_percent": {
                        "description": "Percentage of the traffic to be mirrored by the `mirror` field.",
                        "nullable": true,
                        "type": "integer"
                      },
                      "mirrorPercent": {
                        "description": "Percentage of the traffic to be mirrored by the `mirror` field.",
                        "nullable": true,
                        "type": "integer"
                      },
                      "name": {
                        "description": "The name assigned to the route for debugging purposes.",
                        "format": "string",
                        "type": "string"
                      },
                      "redirect": {
                        "description": "A http rule can either redirect or forward (default) traffic.",
                        "properties": {
                          "authority": {
                            "format": "string",
                            "type": "string"
                          },
                          "redirectCode": {
                            "type": "integer"
                          },
                          "uri": {
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "removeRequestHeaders": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "removeResponseHeaders": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "retries": {
                        "description": "Retry policy for HTTP requests.",
                        "properties": {
                          "attempts": {
                            "description": "Number of retries for a given request.",
                            "format": "int32",
                            "type": "integer"
                          },
                          "perTryTimeout": {
                            "description": "Timeout per retry attempt for a given request.",
                            "type": "string"
                          },
                          "retryOn": {
                            "description": "Specifies the conditions under which retry takes place.",
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "rewrite": {
                        "description": "Rewrite HTTP URIs and Authority headers.",
                        "properties": {
                          "authority": {
                            "description": "rewrite the Authority/Host header with this value.",
                            "format": "string",
                            "type": "string"
                          },
                          "uri": {
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      },
                      "route": {
                        "description": "A http rule can either redirect or forward (default) traffic.",
                        "items": {
                          "properties": {
                            "appendRequestHeaders": {
                              "additionalProperties": {
                                "format": "string",
                                "type": "string"
                              },
                              "description": "Use of `append_request_headers` is deprecated.",
                              "type": "object"
                            },
                            "appendResponseHeaders": {
                              "additionalProperties": {
                                "format": "string",
                                "type": "string"
                              },
                              "description": "Use of `append_response_headers` is deprecated.",
                              "type": "object"
                            },
                            "destination": {
                              "properties": {
                                "host": {
                                  "description": "The name of a service from the service registry.",
                                  "format": "string",
                                  "type": "string"
                                },
                                "port": {
                                  "description": "Specifies the port on the host that is being addressed.",
                                  "properties": {
                                    "number": {
                                      "type": "integer"
                                    }
                                  },
                                  "type": "object"
                                },
                                "subset": {
                                  "description": "The name of a subset within the service.",
                                  "format": "string",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "headers": {
                              "properties": {
                                "request": {
                                  "properties": {
                                    "add": {
                                      "additionalProperties": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "type": "object"
                                    },
                                    "remove": {
                                      "items": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "type": "array"
                                    },
                                    "set": {
                                      "additionalProperties": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "type": "object"
                                    }
                                  },
                                  "type": "object"
                                },
                                "response": {
                                  "properties": {
                                    "add": {
                                      "additionalProperties": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "type": "object"
                                    },
                                    "remove": {
                                      "items": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "type": "array"
                                    },
                                    "set": {
                                      "additionalProperties": {
                                        "format": "string",
                                        "type": "string"
                                      },
                                      "type": "object"
                                    }
                                  },
                                  "type": "object"
                                }
                              },
                              "type": "object"
                            },
                            "removeRequestHeaders": {
                              "description": "Use of `remove_request_headers` is deprecated.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "removeResponseHeaders": {
                              "description": "Use of `remove_response_header` is deprecated.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "weight": {
                              "format": "int32",
                              "type": "integer"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "timeout": {
                        "description": "Timeout for HTTP requests.",
                        "type": "string"
                      },
                      "websocketUpgrade": {
                        "description": "Deprecated.",
                        "type": "boolean"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "tcp": {
                  "description": "An ordered list of route rules for opaque TCP traffic.",
                  "items": {
                    "properties": {
                      "match": {
                        "items": {
                          "properties": {
                            "destinationSubnets": {
                              "description": "IPv4 or IPv6 ip addresses of destination with optional subnet.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "gateways": {
                              "description": "Names of gateways where the rule should be applied to.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "port": {
                              "description": "Specifies the port on the host that is being addressed.",
                              "type": "integer"
                            },
                            "sourceLabels": {
                              "additionalProperties": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "object"
                            },
                            "sourceSubnet": {
                              "description": "IPv4 or IPv6 ip address of source with optional subnet.",
                              "format": "string",
                              "type": "string"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "route": {
                        "description": "The destination to which the connection should be forwarded to.",
                        "items": {
                          "properties": {
                            "destination": {
                              "properties": {
                                "host": {
                                  "description": "The name of a service from the service registry.",
                                  "format": "string",
                                  "type": "string"
                                },
                                "port": {
                                  "description": "Specifies the port on the host that is being addressed.",
                                  "properties": {
                                    "number": {
                                      "type": "integer"
                                    }
                                  },
                                  "type": "object"
                                },
                                "subset": {
                                  "description": "The name of a subset within the service.",
                                  "format": "string",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "weight": {
                              "format": "int32",
                              "type": "integer"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "tls": {
                  "items": {
                    "properties": {
                      "match": {
                        "items": {
                          "properties": {
                            "destinationSubnets": {
                              "description": "IPv4 or IPv6 ip addresses of destination with optional subnet.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "gateways": {
                              "description": "Names of gateways where the rule should be applied to.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "port": {
                              "description": "Specifies the port on the host that is being addressed.",
                              "type": "integer"
                            },
                            "sniHosts": {
                              "description": "SNI (server name indicator) to match on.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            },
                            "sourceLabels": {
                              "additionalProperties": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "object"
                            },
                            "sourceSubnet": {
                              "description": "IPv4 or IPv6 ip address of source with optional subnet.",
                              "format": "string",
                              "type": "string"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "route": {
                        "description": "The destination to which the connection should be forwarded to.",
                        "items": {
                          "properties": {
                            "destination": {
                              "properties": {
                                "host": {
                                  "description": "The name of a service from the service registry.",
                                  "format": "string",
                                  "type": "string"
                                },
                                "port": {
                                  "description": "Specifies the port on the host that is being addressed.",
                                  "properties": {
                                    "number": {
                                      "type": "integer"
                                    }
                                  },
                                  "type": "object"
                                },
                                "subset": {
                                  "description": "The name of a subset within the service.",
                                  "format": "string",
                                  "type": "string"
                                }
                              },
                              "type": "object"
                            },
                            "weight": {
                              "format": "int32",
                              "type": "integer"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha3",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-19": {
    "kind": "CustomResourceDefinition",
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "metadata": {
      "name": "adapters.config.istio.io",
      "labels": {
        "app": "mixer",
        "package": "adapter",
        "istio": "mixer-adapter",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      }
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "kind": "adapter",
        "plural": "adapters",
        "singular": "adapter",
        "categories": [
          "istio-io",
          "policy-istio-io"
        ]
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-20": {
    "kind": "CustomResourceDefinition",
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "metadata": {
      "name": "instances.config.istio.io",
      "labels": {
        "app": "mixer",
        "package": "instance",
        "istio": "mixer-instance",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      }
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "kind": "instance",
        "plural": "instances",
        "singular": "instance",
        "categories": [
          "istio-io",
          "policy-istio-io"
        ]
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-21": {
    "kind": "CustomResourceDefinition",
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "metadata": {
      "name": "templates.config.istio.io",
      "labels": {
        "app": "mixer",
        "package": "template",
        "istio": "mixer-template",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      }
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "kind": "template",
        "plural": "templates",
        "singular": "template",
        "categories": [
          "istio-io",
          "policy-istio-io"
        ]
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-22": {
    "kind": "CustomResourceDefinition",
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "metadata": {
      "name": "handlers.config.istio.io",
      "labels": {
        "app": "mixer",
        "package": "handler",
        "istio": "mixer-handler",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      }
    },
    "spec": {
      "group": "config.istio.io",
      "names": {
        "kind": "handler",
        "plural": "handlers",
        "singular": "handler",
        "categories": [
          "istio-io",
          "policy-istio-io"
        ]
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "versions": [
        {
          "name": "v1alpha2",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-23": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "chart": "istio",
        "heritage": "Tiller",
        "release": "istio"
      },
      "name": "sidecars.networking.istio.io"
    },
    "spec": {
      "group": "networking.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "networking-istio-io"
        ],
        "kind": "Sidecar",
        "plural": "sidecars",
        "singular": "sidecar"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration affecting network reachability of a sidecar. See more details at: https://istio.io/docs/reference/config/networking/v1alpha3/sidecar.html",
              "properties": {
                "egress": {
                  "items": {
                    "properties": {
                      "bind": {
                        "format": "string",
                        "type": "string"
                      },
                      "captureMode": {
                        "enum": [
                          "DEFAULT",
                          "IPTABLES",
                          "NONE"
                        ],
                        "type": "string"
                      },
                      "hosts": {
                        "items": {
                          "format": "string",
                          "type": "string"
                        },
                        "type": "array"
                      },
                      "port": {
                        "description": "The port associated with the listener.",
                        "properties": {
                          "name": {
                            "description": "Label assigned to the port.",
                            "format": "string",
                            "type": "string"
                          },
                          "number": {
                            "description": "A valid non-negative integer port number.",
                            "type": "integer"
                          },
                          "protocol": {
                            "description": "The protocol exposed on the port.",
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "ingress": {
                  "items": {
                    "properties": {
                      "bind": {
                        "description": "The ip to which the listener should be bound.",
                        "format": "string",
                        "type": "string"
                      },
                      "captureMode": {
                        "enum": [
                          "DEFAULT",
                          "IPTABLES",
                          "NONE"
                        ],
                        "type": "string"
                      },
                      "defaultEndpoint": {
                        "format": "string",
                        "type": "string"
                      },
                      "port": {
                        "description": "The port associated with the listener.",
                        "properties": {
                          "name": {
                            "description": "Label assigned to the port.",
                            "format": "string",
                            "type": "string"
                          },
                          "number": {
                            "description": "A valid non-negative integer port number.",
                            "type": "integer"
                          },
                          "protocol": {
                            "description": "The protocol exposed on the port.",
                            "format": "string",
                            "type": "string"
                          }
                        },
                        "type": "object"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "outboundTrafficPolicy": {
                  "description": "This allows to configure the outbound traffic policy.",
                  "properties": {
                    "mode": {
                      "enum": [
                        "REGISTRY_ONLY",
                        "ALLOW_ANY"
                      ],
                      "type": "string"
                    }
                  },
                  "type": "object"
                },
                "workloadSelector": {
                  "properties": {
                    "labels": {
                      "additionalProperties": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "object"
                    }
                  },
                  "type": "object"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1alpha3",
          "served": true,
          "storage": true
        }
      ]
    }
  },
  "istio-obj-24": {
    "apiVersion": "apiextensions.k8s.io/v1beta1",
    "kind": "CustomResourceDefinition",
    "metadata": {
      "labels": {
        "app": "istio-pilot",
        "heritage": "Tiller",
        "istio": "security",
        "release": "istio"
      },
      "name": "authorizationpolicies.security.istio.io"
    },
    "spec": {
      "group": "security.istio.io",
      "names": {
        "categories": [
          "istio-io",
          "security-istio-io"
        ],
        "kind": "AuthorizationPolicy",
        "plural": "authorizationpolicies",
        "singular": "authorizationpolicy"
      },
      "scope": "Namespaced",
      "subresources": {
        "status": {}
      },
      "validation": {
        "openAPIV3Schema": {
          "properties": {
            "spec": {
              "description": "Configuration for access control on workloads. See more details at: https://istio.io/docs/reference/config/security/v1beta1/authorization-policy.html",
              "properties": {
                "rules": {
                  "description": "Optional.",
                  "items": {
                    "properties": {
                      "from": {
                        "description": "Optional.",
                        "items": {
                          "properties": {
                            "source": {
                              "description": "Source specifies the source of a request.",
                              "properties": {
                                "ipBlocks": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                },
                                "namespaces": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                },
                                "principals": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                },
                                "requestPrincipals": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "to": {
                        "description": "Optional.",
                        "items": {
                          "properties": {
                            "operation": {
                              "description": "Operation specifies the operation of a request.",
                              "properties": {
                                "hosts": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                },
                                "methods": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                },
                                "paths": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                },
                                "ports": {
                                  "description": "Optional.",
                                  "items": {
                                    "format": "string",
                                    "type": "string"
                                  },
                                  "type": "array"
                                }
                              },
                              "type": "object"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      },
                      "when": {
                        "description": "Optional.",
                        "items": {
                          "properties": {
                            "key": {
                              "description": "The name of an Istio attribute.",
                              "format": "string",
                              "type": "string"
                            },
                            "values": {
                              "description": "The allowed values for the attribute.",
                              "items": {
                                "format": "string",
                                "type": "string"
                              },
                              "type": "array"
                            }
                          },
                          "type": "object"
                        },
                        "type": "array"
                      }
                    },
                    "type": "object"
                  },
                  "type": "array"
                },
                "selector": {
                  "description": "Optional.",
                  "properties": {
                    "matchLabels": {
                      "additionalProperties": {
                        "format": "string",
                        "type": "string"
                      },
                      "type": "object"
                    }
                  },
                  "type": "object"
                }
              },
              "type": "object"
            }
          },
          "type": "object"
        }
      },
      "versions": [
        {
          "name": "v1beta1",
          "served": true,
          "storage": true
        }
      ]
    }
  },
}