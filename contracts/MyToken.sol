// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // ---------------------------------
    // Step 2: Metadata & State Variables
    // ---------------------------------

    string public name = "MyToken";         // Token name
    string public symbol = "MTK";           // Token symbol
    uint8 public decimals = 18;             // Decimals (standard = 18)
    uint256 public totalSupply;             // Total supply

    // Track user balances
    mapping(address => uint256) public balanceOf;

    // Nested mapping for allowances (owner => spender => amount)
    mapping(address => mapping(address => uint256)) public allowance;


    // ---------------------------------
    // Step 3: Implement Events
    // ---------------------------------

    // Emitted when tokens are transferred
    event Transfer(address indexed from, address indexed to, uint256 value);

    // Emitted when allowance is set via approve()
    event Approval(address indexed owner, address indexed spender, uint256 value);


    // ---------------------------------
    // Step 2 (continued): Constructor
    // ---------------------------------

    constructor(uint256 _totalSupply) {
        totalSupply = _totalSupply * (10 ** decimals);     // Adjust for decimals
        balanceOf[msg.sender] = totalSupply;               // Assign all tokens to creator
        emit Transfer(address(0), msg.sender, totalSupply); // Mint event
    }


    // ---------------------------------
    // Step 4: Implement transfer()
    // ---------------------------------

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        // Update balances
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        // Emit event
        emit Transfer(msg.sender, _to, _value);

        return true;
    }


    // ---------------------------------
    // Step 5: Implement approve()
    // ---------------------------------

    function approve(address _spender, uint256 _value) public returns (bool success) {
        require(_spender != address(0), "Cannot approve zero address");

        allowance[msg.sender][_spender] = _value;

        // Emit approval event
        emit Approval(msg.sender, _spender, _value);

        return true;
    }


    // ---------------------------------
    // Step 6: Implement transferFrom()
    // ---------------------------------

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

        // Update balances
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;

        // Reduce allowance
        allowance[_from][msg.sender] -= _value;

        // Emit event
        emit Transfer(_from, _to, _value);

        return true;
    }


    // ---------------------------------
    // Step 7: Optional Helper Functions
    // ---------------------------------

    // Get total supply (already public, but nice to include explicitly)
    function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }

    // Return token info in a single call
    function getTokenInfo() public view returns (string memory, string memory, uint8, uint256) {
        return (name, symbol, decimals, totalSupply);
    }
}