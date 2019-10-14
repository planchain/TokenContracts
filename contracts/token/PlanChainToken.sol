pragma solidity ^0.4.24;


import "./MiniMeToken.sol";


// PlanChain Token
//
// @authors:

// Jurgen Schouppe <jurgen@safetech.io>

//
// By sending VET to this contract, you agree to the terms and purchage agreement for participating in the Token Sale:
// https://planchain.io/terms-conditions
// 
// Security audit performed by LeastAuthority:
// https://github.com/FundRequest/audit-reports/raw/master/2018-02-06 - Least Authority - ICO Contracts Audit Report.pdf

contract PlanChainToken is MiniMeToken {

  constructor(
    address _tokenFactory,
    address _parentToken, 
    uint _parentSnapShotBlock, 
    string _tokenName, 
    uint8 _decimalUnits, 
    string _tokenSymbol, 
    bool _transfersEnabled) 
    public 
    MiniMeToken(
      _tokenFactory,
      _parentToken, 
      _parentSnapShotBlock, 
      _tokenName, 
      _decimalUnits, 
      _tokenSymbol, 
      _transfersEnabled) 
  {
    //constructor
  }

  function safeApprove(address _spender, uint256 _currentValue, uint256 _amount) public returns (bool success) {
    require(allowed[msg.sender][_spender] == _currentValue);
    return doApprove(_spender, _amount);
  }

  function isPlanChainToken() public pure returns (bool) {
    return true;
  }
}