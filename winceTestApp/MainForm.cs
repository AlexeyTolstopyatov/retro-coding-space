using System;
using System.Drawing;
using System.Collections;
using System.Windows.Forms;
using System.Data;

//
// (C) BilboBackends
//		Test Application for searching Windows CE API calls inside
// Using this instance and other programs, I'll be 
// search Export/Import functions and library names
//
// Built in Microsoft Windows 2000 Professional
// 			Intel x86
// 			Microsoft Visual Studio 2003
//			Microsoft .NET Compact Framework 1.1
namespace cpcapp
{
	/// <summary>
	/// Summary description for Form1.
	/// </summary>
	public class Form1 : System.Windows.Forms.Form
	{
		private System.Windows.Forms.Label welcomeLabel;
		private System.Windows.Forms.Label descLabel;
		private System.Windows.Forms.ProgressBar progressBar;
		private System.Windows.Forms.Label label;
		private System.Windows.Forms.Button startButton;
	
		public Form1()
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();

			//
			// TODO: Add any constructor code after InitializeComponent call
			//
		}
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			base.Dispose( disposing );
		}
		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.welcomeLabel = new System.Windows.Forms.Label();
			this.descLabel = new System.Windows.Forms.Label();
			this.progressBar = new System.Windows.Forms.ProgressBar();
			this.label = new System.Windows.Forms.Label();
			this.startButton = new System.Windows.Forms.Button();
			// 
			// welcomeLabel
			// 
			this.welcomeLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular);
			this.welcomeLabel.Location = new System.Drawing.Point(32, 16);
			this.welcomeLabel.Size = new System.Drawing.Size(272, 24);
			this.welcomeLabel.Text = "Windows CE Application";
			// 
			// descLabel
			// 
			this.descLabel.Location = new System.Drawing.Point(32, 48);
			this.descLabel.Size = new System.Drawing.Size(272, 32);
			this.descLabel.Text = "This Application needs for demonstrate PE internals and Windows CE API usage";
			// 
			// progressBar
			// 
			this.progressBar.Location = new System.Drawing.Point(8, 216);
			this.progressBar.Size = new System.Drawing.Size(440, 20);
			// 
			// label
			// 
			this.label.Location = new System.Drawing.Point(32, 80);
			this.label.Size = new System.Drawing.Size(272, 128);
			this.label.Text = "label1";
			// 
			// startButton
			// 
			this.startButton.Location = new System.Drawing.Point(312, 48);
			this.startButton.Size = new System.Drawing.Size(112, 20);
			this.startButton.Text = "Start";
			this.startButton.Click += new System.EventHandler(this.startButton_Click);
			// 
			// Form1
			// 
			this.ClientSize = new System.Drawing.Size(458, 246);
			this.Controls.Add(this.startButton);
			this.Controls.Add(this.label);
			this.Controls.Add(this.progressBar);
			this.Controls.Add(this.descLabel);
			this.Controls.Add(this.welcomeLabel);
			this.Text = "Form1";

		}
		#endregion

		/// <summary>
		/// The main entry point for the application.
		/// </summary>

		static void Main() 
		{
			Application.Run(new Form1());
		}

		//
		// Lets demonstrate the Compact .NET Framework
		// things and return to JellyBins for seeking Windows CE API Calls
		//
		// All what i need -- 
		// 		Subsystem detection (Windows CE Graphical Interface Application)
		//		Importing Functions (.NET Compact/Windows API)
		//		COL20 				(CLR Header) 
		private void startButton_Click(object sender, System.EventArgs e)
		{
			foreach (string item in System.IO.Directory.GetFiles("\\Windows"))
			{
				label.Text += item + "\r\n";
			}
			MessageBox.Show("Iteration Done!", "Windows API");
		}
	}
}
