.class public final Lcom/google/android/exoplr2avp/upstream/UdpDataSource;
.super Lcom/google/android/exoplr2avp/upstream/BaseDataSource;
.source "UdpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_PACKET_SIZE:I = 0x7d0

.field public static final DEFAULT_SOCKET_TIMEOUT_MILLIS:I = 0x1f40

.field public static final UDP_PORT_UNSET:I = -0x1


# instance fields
.field private address:Ljava/net/InetAddress;

.field private multicastSocket:Ljava/net/MulticastSocket;

.field private opened:Z

.field private final packet:Ljava/net/DatagramPacket;

.field private final packetBuffer:[B

.field private packetRemaining:I

.field private socket:Ljava/net/DatagramSocket;

.field private final socketTimeoutMillis:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x7d0

    .line 72
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x1f40

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/BaseDataSource;-><init>(Z)V

    .line 93
    iput p2, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socketTimeoutMillis:I

    .line 94
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetBuffer:[B

    .line 95
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :catch_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 174
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 176
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetRemaining:I

    .line 178
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 179
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->opened:Z

    .line 180
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->transferEnded()V

    :cond_2
    return-void
.end method

.method public getLocalPort()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 192
    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    .line 100
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->transferInitializing(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 105
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    .line 106
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 107
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->multicastSocket:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    goto :goto_0

    .line 112
    :cond_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socketTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->opened:Z

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->transferStarted(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    .line 118
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;

    const/16 v1, 0x7d1

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p1

    .line 116
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;

    const/16 v1, 0x7d6

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 133
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetRemaining:I

    if-nez v0, :cond_1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->socket:Ljava/net/DatagramSocket;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetRemaining:I

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->bytesTransferred(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;

    const/16 p3, 0x7d1

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p1

    .line 138
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;

    const/16 p3, 0x7d2

    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    .line 148
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packet:Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr v0, v1

    .line 149
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 150
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetBuffer:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget p1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;->packetRemaining:I

    return p3
.end method
