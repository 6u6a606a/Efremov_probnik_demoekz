namespace Efremov_demo_ekz
{
    partial class Authorization
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.button_auth = new System.Windows.Forms.Button();
            this.button_auth_guest = new System.Windows.Forms.Button();
            this.label_login = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label_name = new System.Windows.Forms.Label();
            this.textBox_login = new System.Windows.Forms.TextBox();
            this.textBox_password = new System.Windows.Forms.TextBox();
            this.panel_logo = new System.Windows.Forms.Panel();
            this.panel_button = new System.Windows.Forms.Panel();
            this.Logo = new System.Windows.Forms.PictureBox();
            this.panel_logo.SuspendLayout();
            this.panel_button.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).BeginInit();
            this.SuspendLayout();
            // 
            // button_auth
            // 
            this.button_auth.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.button_auth.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button_auth.Location = new System.Drawing.Point(171, 26);
            this.button_auth.Name = "button_auth";
            this.button_auth.Size = new System.Drawing.Size(106, 37);
            this.button_auth.TabIndex = 0;
            this.button_auth.Text = "Войти";
            this.button_auth.UseVisualStyleBackColor = false;
            // 
            // button_auth_guest
            // 
            this.button_auth_guest.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(73)))), ((int)(((byte)(140)))), ((int)(((byte)(81)))));
            this.button_auth_guest.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button_auth_guest.Location = new System.Drawing.Point(156, 69);
            this.button_auth_guest.Name = "button_auth_guest";
            this.button_auth_guest.Size = new System.Drawing.Size(135, 37);
            this.button_auth_guest.TabIndex = 1;
            this.button_auth_guest.Text = "Войти как гость";
            this.button_auth_guest.UseVisualStyleBackColor = false;
            // 
            // label_login
            // 
            this.label_login.AutoSize = true;
            this.label_login.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label_login.Location = new System.Drawing.Point(64, 172);
            this.label_login.Name = "label_login";
            this.label_login.Size = new System.Drawing.Size(43, 15);
            this.label_login.TabIndex = 2;
            this.label_login.Text = "Логин:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label2.Location = new System.Drawing.Point(56, 227);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(51, 15);
            this.label2.TabIndex = 3;
            this.label2.Text = "Пароль:";
            // 
            // label_name
            // 
            this.label_name.AutoSize = true;
            this.label_name.Font = new System.Drawing.Font("Comic Sans MS", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label_name.Location = new System.Drawing.Point(117, 46);
            this.label_name.Name = "label_name";
            this.label_name.Size = new System.Drawing.Size(186, 33);
            this.label_name.TabIndex = 4;
            this.label_name.Text = "ООО \"Посуда\"";
            // 
            // textBox_login
            // 
            this.textBox_login.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox_login.Location = new System.Drawing.Point(113, 169);
            this.textBox_login.Name = "textBox_login";
            this.textBox_login.Size = new System.Drawing.Size(231, 23);
            this.textBox_login.TabIndex = 5;
            // 
            // textBox_password
            // 
            this.textBox_password.Font = new System.Drawing.Font("Comic Sans MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox_password.Location = new System.Drawing.Point(113, 224);
            this.textBox_password.Name = "textBox_password";
            this.textBox_password.Size = new System.Drawing.Size(231, 23);
            this.textBox_password.TabIndex = 6;
            // 
            // panel_logo
            // 
            this.panel_logo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panel_logo.Controls.Add(this.Logo);
            this.panel_logo.Controls.Add(this.label_name);
            this.panel_logo.Location = new System.Drawing.Point(-2, 0);
            this.panel_logo.Name = "panel_logo";
            this.panel_logo.Size = new System.Drawing.Size(439, 123);
            this.panel_logo.TabIndex = 7;
            // 
            // panel_button
            // 
            this.panel_button.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(118)))), ((int)(((byte)(227)))), ((int)(((byte)(131)))));
            this.panel_button.Controls.Add(this.button_auth);
            this.panel_button.Controls.Add(this.button_auth_guest);
            this.panel_button.Location = new System.Drawing.Point(-2, 311);
            this.panel_button.Name = "panel_button";
            this.panel_button.Size = new System.Drawing.Size(439, 139);
            this.panel_button.TabIndex = 8;
            // 
            // Logo
            // 
            this.Logo.Image = global::Efremov_demo_ekz.Properties.Resources.logo;
            this.Logo.Location = new System.Drawing.Point(322, 12);
            this.Logo.Name = "Logo";
            this.Logo.Size = new System.Drawing.Size(103, 98);
            this.Logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.Logo.TabIndex = 5;
            this.Logo.TabStop = false;
            // 
            // Authorization
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(435, 450);
            this.Controls.Add(this.panel_button);
            this.Controls.Add(this.panel_logo);
            this.Controls.Add(this.textBox_password);
            this.Controls.Add(this.textBox_login);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label_login);
            this.Name = "Authorization";
            this.Text = "Авторизация";
            this.panel_logo.ResumeLayout(false);
            this.panel_logo.PerformLayout();
            this.panel_button.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button_auth;
        private System.Windows.Forms.Button button_auth_guest;
        private System.Windows.Forms.Label label_login;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label_name;
        private System.Windows.Forms.TextBox textBox_login;
        private System.Windows.Forms.TextBox textBox_password;
        private System.Windows.Forms.Panel panel_logo;
        private System.Windows.Forms.Panel panel_button;
        private System.Windows.Forms.PictureBox Logo;
    }
}

