// MY .NED FIle 
//Author Maxmilliam Azuikeokafor

simple IoT
{
    parameters:
        @display("i=block/routing");
    gates:
        inout gate[];
}

network EvolutionOfNodes_EONs
{
    types:
        channel Channel extends ned.DelayChannel
        {
            delay = 100ms;
        }
    submodules:
        node[6]: IoT;
    connections:
        node[0].gate++ <--> Channel <--> node[1].gate++;
        node[1].gate++ <--> Channel <--> node[2].gate++;
        node[1].gate++ <--> Channel <--> node[4].gate++;
        node[3].gate++ <--> Channel <--> node[4].gate++;
        node[4].gate++ <--> Channel <--> node[5].gate++;
}

