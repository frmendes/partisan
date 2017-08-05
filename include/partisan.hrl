-define(APP, partisan).
-define(PEER_IP, {127,0,0,1}).
-define(PEER_PORT, 9000).
-define(PEER_SERVICE_SERVER, partisan_peer_service_server).
-define(FANOUT, 5).
-define(CACHE, partisan_connection_cache).
-define(PARALLELISM, 1).

-type actor() :: binary().
-type node_spec() :: #{name => node(),
                       ip => inet:ip_address(),
                       port => non_neg_integer(),
                       parallelism => non_neg_integer()}.
-type message() :: term().
-type name() :: node().
-type partitions() :: [{reference(), node_spec()}].
-type ttl() :: non_neg_integer().
