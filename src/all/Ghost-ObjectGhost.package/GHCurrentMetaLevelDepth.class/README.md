I am process specific variable to count current depth of ghost meta level calls.
I am used to prevent calls from meta level to domain level because domain level is intercepted by ghost but it should not happen during meta level call

- increaseFor: aBlock
it  increases current meta level depth for given block of code