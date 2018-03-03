'use strict';
var nodes = function() {}
nodes.customNode = require('./nodeHelpers/customNode');
nodes.infuraNode = require('./nodeHelpers/infura');
nodes.metamaskNode = require('./nodeHelpers/metamask');
nodes.nodeTypes = {
    LDBC: "LDBC",
    ETH: "ETH",
    ETC: "ETC",
    MUS: "MUSIC",
    Ropsten: "ROPSTEN ETH",
    Kovan: "KOVAN ETH",
    Rinkeby: "RINKEBY ETH",
    RSK: "RSK",
    EXP: "EXP",
    UBQ: "UBQ",
    POA: "POA",
    TOMO: "TOMO",
    ELLA: "ELLA",
    Custom: "CUSTOM ETH"
};
nodes.ensNodeTypes = [nodes.nodeTypes.ETH, nodes.nodeTypes.Ropsten];
nodes.domainsaleNodeTypes = [nodes.nodeTypes.ETH, nodes.nodeTypes.Ropsten];
nodes.customNodeObj = {
    'name': 'CUS',
    'blockExplorerTX': '',
    'blockExplorerAddr': '',
    'type': nodes.nodeTypes.Custom,
    'eip155': false,
    'chainId': '',
    'tokenList': [],
    'abiList': [],
    'service': 'Custom',
    'lib': null
};
nodes.nodeList = {
    'eth_ldbc': {
        'name': 'LDBC',
        'blockExplorerTX': 'https://e.ldbc.io/#/tx/[[txHash]]',
        'blockExplorerAddr': 'https://e.ldbc.io/#/address/[[address]]',
        'type': nodes.nodeTypes.LDBC,
        'eip155': false,
        'chainId': 880627901129,
        'tokenList': require('./tokens/ldbcTokens.json'),
        'abiList': require('./abiDefinitions/ldbcAbi.json'),
        'service': 'ldbc.io',
        'lib': new nodes.customNode('https://rpc.ldbc.io', '')
    }
};


nodes.ethPrice = require('./nodeHelpers/ethPrice');
module.exports = nodes;
