<template>
    <div class="modern-login-container">
        <!-- 左侧插图区域 -->
        <div class="login-illustration">
            <div class="illustration-content">
                <div class="logo-section">
                    <h1 class="brand-title">🐾 宠物商城</h1>
                    <p class="brand-subtitle">Pet Mall Management System</p>
                </div>
                <div class="illustration-text">
                    <h2>欢迎回来！</h2>
                    <p>专业的宠物商城管理系统，为您的业务保驾护航</p>
                </div>
                <div class="features">
                    <div class="feature-item">
                        <div class="feature-icon">📊</div>
                        <span>数据统计</span>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">🛍️</div>
                        <span>商品管理</span>
                    </div>
                    <div class="feature-item">
                        <div class="feature-icon">👥</div>
                        <span>用户管理</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- 右侧登录表单区域 -->
        <div class="login-form-section">
            <div class="form-container">
                <div class="form-header">
                    <h2 class="form-title">管理员登录</h2>
                    <p class="form-subtitle">请输入您的账号密码进行登录</p>
                </div>

                <el-form class="login-form" label-position="top">
                    <!-- 用户名输入 -->
                    <el-form-item label="用户名">
                        <el-input
                            v-model="rulesForm.username"
                            placeholder="请输入用户名"
                            prefix-icon="el-icon-user"
                            size="large"
                            class="modern-input"
                        ></el-input>
                    </el-form-item>

                    <!-- 密码输入 -->
                    <el-form-item label="密码">
                        <el-input
                            v-model="rulesForm.password"
                            type="password"
                            placeholder="请输入密码"
                            prefix-icon="el-icon-lock"
                            size="large"
                            class="modern-input"
                            show-password
                        ></el-input>
                    </el-form-item>

                    <!-- 角色选择 -->
                    <el-form-item label="登录角色">
                        <el-select
                            v-model="rulesForm.role"
                            placeholder="请选择角色"
                            size="large"
                            class="modern-select"
                            style="width: 100%"
                        >
                            <el-option
                                v-for="item in menus"
                                v-if="item.hasBackLogin=='是'"
                                :key="item.roleName"
                                :label="item.roleName"
                                :value="item.roleName"
                            ></el-option>
                        </el-select>
                    </el-form-item>

                    <!-- 登录按钮 -->
                    <el-button
                        type="primary"
                        @click="login()"
                        class="login-button"
                        size="large"
                    >
                        🚀 立即登录
                    </el-button>

                    <!-- 底部链接 -->
                    <div class="form-footer">
                        <a @click="register('yonghu')" class="link-button">
                            👤 用户注册
                        </a>
                        <a href="#" class="link-button">
                            ❓ 忘记密码
                        </a>
                    </div>
                </el-form>
            </div>
        </div>
    </div>
</template>

<script>
import menu from "@/utils/menu";

export default {
    data() {
        return {
            rulesForm: {
                username: "",
                password: "",
                role: "",
            },
            menus: [],
            tableName: "",
        };
    },
    mounted() {
        let menus = menu.list();
        this.menus = menus;
    },
    methods: {
        register(tableName) {
            this.$storage.set("loginTable", tableName);
            this.$router.push({path: '/register'})
        },
        login() {
            if (!this.rulesForm.username) {
                this.$message.error("请输入用户名");
                return;
            }
            if (!this.rulesForm.password) {
                this.$message.error("请输入密码");
                return;
            }
            if (!this.rulesForm.role) {
                this.$message.error("请选择角色");
                return;
            }

            let menus = this.menus;
            for (let i = 0; i < menus.length; i++) {
                if (menus[i].roleName == this.rulesForm.role) {
                    this.tableName = menus[i].tableName;
                }
            }

            this.$http({
                url: `${this.tableName}/login?username=${this.rulesForm.username}&password=${this.rulesForm.password}`,
                method: "post"
            }).then(({data}) => {
                if (data && data.code === 0) {
                    this.$storage.set("Token", data.token);
                    this.$storage.set("userId", data.userId);
                    this.$storage.set("role", this.rulesForm.role);
                    this.$storage.set("sessionTable", this.tableName);
                    this.$storage.set("adminName", this.rulesForm.username);
                    this.$router.replace({path: "/index/"});
                } else {
                    this.$message.error(data.msg);
                }
            });
        },
    }
};
</script>

<style lang="scss" scoped>
.modern-login-container {
    display: flex;
    min-height: 100vh;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
}

/* ==================== 左侧插图区域 ==================== */
.login-illustration {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 4rem;
    color: white;
    position: relative;
    overflow: hidden;

    &::before {
        content: '';
        position: absolute;
        width: 500px;
        height: 500px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 50%;
        top: -200px;
        right: -100px;
    }

    &::after {
        content: '';
        position: absolute;
        width: 300px;
        height: 300px;
        background: rgba(255, 255, 255, 0.08);
        border-radius: 50%;
        bottom: -100px;
        left: -50px;
    }
}

.illustration-content {
    position: relative;
    z-index: 1;
    max-width: 500px;
}

.logo-section {
    margin-bottom: 4rem;

    .brand-title {
        font-size: 3.5rem;
        font-weight: 800;
        margin-bottom: 1rem;
        text-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }

    .brand-subtitle {
        font-size: 1.2rem;
        opacity: 0.9;
        letter-spacing: 2px;
        text-transform: uppercase;
    }
}

.illustration-text {
    margin-bottom: 3rem;

    h2 {
        font-size: 2.5rem;
        margin-bottom: 1rem;
        font-weight: 700;
    }

    p {
        font-size: 1.2rem;
        opacity: 0.9;
        line-height: 1.8;
    }
}

.features {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 2rem;
    margin-top: 3rem;
}

.feature-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 0.8rem;
    padding: 1.5rem;
    background: rgba(255, 255, 255, 0.15);
    border-radius: 16px;
    backdrop-filter: blur(10px);
    transition: all 0.3s ease;

    &:hover {
        background: rgba(255, 255, 255, 0.25);
        transform: translateY(-5px);
    }

    .feature-icon {
        font-size: 2.5rem;
    }

    span {
        font-size: 0.95rem;
        font-weight: 500;
    }
}

/* ==================== 右侧表单区域 ==================== */
.login-form-section {
    flex: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 4rem 2rem;
    background: white;
}

.form-container {
    width: 100%;
    max-width: 480px;
}

.form-header {
    margin-bottom: 3rem;
    text-align: center;

    .form-title {
        font-size: 2.5rem;
        font-weight: 700;
        color: #2C3E50;
        margin-bottom: 0.8rem;
        background: linear-gradient(135deg, #FF9068, #FF7B54);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .form-subtitle {
        font-size: 1rem;
        color: #7F8C8D;
    }
}

.login-form {
    .el-form-item {
        margin-bottom: 1.8rem;

        /deep/ .el-form-item__label {
            font-weight: 600;
            color: #2C3E50;
            margin-bottom: 0.5rem;
        }
    }

    /deep/ .el-input__inner {
        height: 50px;
        border-radius: 12px;
        border: 2px solid #E8E8E8;
        padding-left: 45px;
        font-size: 1rem;
        transition: all 0.3s ease;

        &:focus {
            border-color: #FF9068;
            box-shadow: 0 0 0 3px rgba(255, 144, 104, 0.1);
        }
    }

    /deep/ .el-input__prefix {
        left: 15px;
        font-size: 1.2rem;
        color: #7F8C8D;
    }

    /deep/ .el-select .el-input__inner {
        padding-left: 15px;
    }
}

.login-button {
    width: 100%;
    height: 54px;
    margin-top: 1rem;
    border-radius: 12px;
    font-size: 1.1rem;
    font-weight: 600;
    background: linear-gradient(135deg, #FF9068 0%, #FF7B54 100%);
    border: none;
    box-shadow: 0 6px 20px rgba(255, 144, 104, 0.4);
    transition: all 0.3s ease;

    &:hover {
        transform: translateY(-2px);
        box-shadow: 0 8px 25px rgba(255, 144, 104, 0.5);
    }

    &:active {
        transform: translateY(0);
    }
}

.form-footer {
    display: flex;
    justify-content: space-between;
    margin-top: 2rem;
    padding-top: 2rem;
    border-top: 1px solid #E8E8E8;

    .link-button {
        color: #FF9068;
        font-weight: 500;
        cursor: pointer;
        transition: all 0.3s ease;
        text-decoration: none;

        &:hover {
            color: #FF7B54;
            text-decoration: underline;
        }
    }
}

/* ==================== 响应式设计 ==================== */
@media (max-width: 1024px) {
    .modern-login-container {
        flex-direction: column;
    }

    .login-illustration {
        min-height: 40vh;
        padding: 3rem 2rem;

        .illustration-text h2 {
            font-size: 2rem;
        }

        .features {
            grid-template-columns: repeat(3, 1fr);
            gap: 1rem;
        }
    }

    .login-form-section {
        padding: 3rem 2rem;
    }

    .logo-section .brand-title {
        font-size: 2.5rem;
    }
}

@media (max-width: 768px) {
    .features {
        grid-template-columns: 1fr;
    }

    .form-header .form-title {
        font-size: 2rem;
    }
}
</style>
