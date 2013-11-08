d = <<eos
The Vanguard Brokerage Option (VBO®) gives you access to thousands of mutual funds from hundreds of fund families through a brokerage account.

You can invest up to 100% of your pre-tax and Roth 401(k) after-tax account balance in your VBO account or use it to supplement Option A or B investments. Future contributions to your 401(k) Savings Plan account will be invested in the Option A or B investment of your choice. Then you can transfer the money to your brokerage account and invest in mutual funds.

Keep in mind that this option might be best for experienced investors. The risks are substantially higher with this strategy, and you’ll be responsible for paying commissions and other costs for your VBO account.

If you decide this option is right for you, you must complete a VBO application to open your brokerage account. To obtain a copy of the application, contact a Vanguard Participant Services associate at (800) 523-1188 (hearing-impaired: (800) 749-7273) Monday through Friday from 5:30 a.m. to 6 p.m., Pacific time.

All investing is subject to risk, including the possible loss of the money you invest.

For more information, visit vanguard.com, or call 800-523-1188 for Vanguard funds and 800-339-4515 for non-Vanguard funds offered through Vanguard Brokerage Services, to obtain a prospectus. Investment objectives, risks, charges, expenses, and other important information are contained in the prospectus; read and consider it carefully before investing.

Vanguard Brokerage Services is a division of Vanguard Marketing Corporation, Member FINRA.
eos

Company.create([
  { name: 'Fidelity investments', description: d },
  { name: 'Citigroup', description: d },
  { name: 'Hewitt Associates', description: d },
  { name: 'Great West Retirement Services', description: d },
  { name: 'TIAA-CREF', description: d },
  { name: 'Vangaurd', description: d },
  { name: 'Principal Financial Group', description: d },
  { name: 'Merrill Lynch', description: d },
  { name: 'ING', description: d },
  { name: 'Nationwide Financial', description: d }
  ]);
