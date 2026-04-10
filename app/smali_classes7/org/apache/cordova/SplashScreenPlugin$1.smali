.class Lorg/apache/cordova/SplashScreenPlugin$1;
.super Ljava/lang/Object;
.source "SplashScreenPlugin.java"

# interfaces
.implements Landroidx/core/splashscreen/SplashScreen$OnExitAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/SplashScreenPlugin;->setupSplashScreen(Landroidx/core/splashscreen/SplashScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/SplashScreenPlugin;


# direct methods
.method constructor <init>(Lorg/apache/cordova/SplashScreenPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/SplashScreenPlugin;

    .line 142
    iput-object p1, p0, Lorg/apache/cordova/SplashScreenPlugin$1;->this$0:Lorg/apache/cordova/SplashScreenPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSplashScreenExit(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .locals 4
    .param p1, "splashScreenViewProvider"    # Landroidx/core/splashscreen/SplashScreenViewProvider;

    .line 145
    invoke-virtual {p1}, Landroidx/core/splashscreen/SplashScreenViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "splashScreenView":Landroid/view/View;
    nop

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/SplashScreenPlugin$1;->this$0:Lorg/apache/cordova/SplashScreenPlugin;

    invoke-static {v2}, Lorg/apache/cordova/SplashScreenPlugin;->-$$Nest$fgetfadeDuration(Lorg/apache/cordova/SplashScreenPlugin;)I

    move-result v2

    int-to-long v2, v2

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 151
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 152
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/apache/cordova/SplashScreenPlugin$1$1;

    invoke-direct {v2, p0, p1}, Lorg/apache/cordova/SplashScreenPlugin$1$1;-><init>(Lorg/apache/cordova/SplashScreenPlugin$1;Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    .line 153
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 159
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 160
    return-void
.end method
