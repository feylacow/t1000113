.class public final synthetic Lcom/google/android/exoplr2avp/text/webvtt/-$$Lambda$WebvttSubtitle$GEwzmYruCO8D3U-ogHrYjEkZ-nc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/text/webvtt/-$$Lambda$WebvttSubtitle$GEwzmYruCO8D3U-ogHrYjEkZ-nc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/text/webvtt/-$$Lambda$WebvttSubtitle$GEwzmYruCO8D3U-ogHrYjEkZ-nc;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/text/webvtt/-$$Lambda$WebvttSubtitle$GEwzmYruCO8D3U-ogHrYjEkZ-nc;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/text/webvtt/-$$Lambda$WebvttSubtitle$GEwzmYruCO8D3U-ogHrYjEkZ-nc;->INSTANCE:Lcom/google/android/exoplr2avp/text/webvtt/-$$Lambda$WebvttSubtitle$GEwzmYruCO8D3U-ogHrYjEkZ-nc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;

    check-cast p2, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/text/webvtt/WebvttSubtitle;->lambda$getCues$0(Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueInfo;)I

    move-result p1

    return p1
.end method
